
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct g_provider {int sectorsize; } ;
struct g_part_table {int gpt_entries; int gpt_entry; } ;
struct g_part_entry {int gpe_index; int gpe_deleted; } ;
struct g_part_bsd_table {int * bbarea; } ;
struct TYPE_2__ {int p_cpg; int p_frag; int p_fstype; int p_fsize; int p_offset; int p_size; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;
struct g_consumer {struct g_provider* provider; } ;


 int BBSIZE ;
 struct g_part_entry* LIST_FIRST (int *) ;
 struct g_part_entry* LIST_NEXT (struct g_part_entry*,int ) ;
 int bzero (int *,int) ;
 int g_write_data (struct g_consumer*,int ,int *,int ) ;
 int gpe_entry ;
 int le16dec (int *) ;
 int le16enc (int *,int ) ;
 int le32enc (int *,int ) ;

__attribute__((used)) static int
g_part_bsd_write(struct g_part_table *basetable, struct g_consumer *cp)
{
 struct g_provider *pp;
 struct g_part_entry *baseentry;
 struct g_part_bsd_entry *entry;
 struct g_part_bsd_table *table;
 uint16_t sum;
 u_char *label, *p, *pe;
 int error, index;

 pp = cp->provider;
 table = (struct g_part_bsd_table *)basetable;
 baseentry = LIST_FIRST(&basetable->gpt_entry);
 label = table->bbarea + pp->sectorsize;
 for (index = 1; index <= basetable->gpt_entries; index++) {
  p = label + 148 + (index - 1) * 16;
  entry = (baseentry != ((void*)0) && index == baseentry->gpe_index)
      ? (struct g_part_bsd_entry *)baseentry : ((void*)0);
  if (entry != ((void*)0) && !baseentry->gpe_deleted) {
   le32enc(p + 0, entry->part.p_size);
   le32enc(p + 4, entry->part.p_offset);
   le32enc(p + 8, entry->part.p_fsize);
   p[12] = entry->part.p_fstype;
   p[13] = entry->part.p_frag;
   le16enc(p + 14, entry->part.p_cpg);
  } else
   bzero(p, 16);

  if (entry != ((void*)0))
   baseentry = LIST_NEXT(baseentry, gpe_entry);
 }


 le16enc(label + 136, 0);
 pe = label + 148 + basetable->gpt_entries * 16;
 sum = 0;
 for (p = label; p < pe; p += 2)
  sum ^= le16dec(p);
 le16enc(label + 136, sum);

 error = g_write_data(cp, 0, table->bbarea, BBSIZE);
 return (error);
}
