
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {int gpt_sectors; int gpt_heads; int gpt_entries; int gpt_last; int gpt_isleaf; scalar_t__ gpt_first; } ;
struct g_part_parms {struct g_provider* gpp_provider; } ;
struct g_part_entry {int gpe_internal; } ;
struct g_part_bsd_table {int offset; int * bbarea; } ;
struct TYPE_2__ {int p_size; int p_offset; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;
struct disklabel {int dummy; } ;


 int BBSIZE ;
 int DISKMAGIC ;
 int ENOSPC ;
 int ENOTBLK ;
 int MIN (int,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ RAW_PART ;
 int UINT32_MAX ;
 int * g_malloc (int,int) ;
 struct g_part_entry* g_part_new_entry (struct g_part_table*,scalar_t__,scalar_t__,int) ;
 int le16enc (int *,int) ;
 int le32enc (int *,int) ;

__attribute__((used)) static int
g_part_bsd_create(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_provider *pp;
 struct g_part_entry *baseentry;
 struct g_part_bsd_entry *entry;
 struct g_part_bsd_table *table;
 u_char *ptr;
 uint32_t msize, ncyls, secpercyl;

 pp = gpp->gpp_provider;

 if (pp->sectorsize < sizeof(struct disklabel))
  return (ENOSPC);
 if (BBSIZE % pp->sectorsize)
  return (ENOTBLK);

 msize = MIN(pp->mediasize / pp->sectorsize, UINT32_MAX);
 secpercyl = basetable->gpt_sectors * basetable->gpt_heads;
 ncyls = msize / secpercyl;

 table = (struct g_part_bsd_table *)basetable;
 table->bbarea = g_malloc(BBSIZE, M_WAITOK | M_ZERO);
 ptr = table->bbarea + pp->sectorsize;

 le32enc(ptr + 0, DISKMAGIC);
 le32enc(ptr + 40, pp->sectorsize);
 le32enc(ptr + 44, basetable->gpt_sectors);
 le32enc(ptr + 48, basetable->gpt_heads);
 le32enc(ptr + 52, ncyls);
 le32enc(ptr + 56, secpercyl);
 le32enc(ptr + 60, msize);
 le16enc(ptr + 72, 3600);
 le32enc(ptr + 132, DISKMAGIC);
 le16enc(ptr + 138, basetable->gpt_entries);
 le32enc(ptr + 140, BBSIZE);

 basetable->gpt_first = 0;
 basetable->gpt_last = msize - 1;
 basetable->gpt_isleaf = 1;

 baseentry = g_part_new_entry(basetable, RAW_PART + 1,
     basetable->gpt_first, basetable->gpt_last);
 baseentry->gpe_internal = 1;
 entry = (struct g_part_bsd_entry *)baseentry;
 entry->part.p_size = basetable->gpt_last + 1;
 entry->part.p_offset = table->offset;

 return (0);
}
