
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct g_provider {int mediasize; int sectorsize; char* name; } ;
struct g_part_table {int gpt_corrupt; int gpt_sectors; int gpt_entries; int gpt_last; scalar_t__ gpt_first; } ;
struct g_part_entry {int gpe_offset; } ;
struct g_part_ebr_table {int ebr; } ;
struct dos_partition {int dp_typ; int dp_start; int dp_size; } ;
struct g_part_ebr_entry {struct dos_partition ent; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef int off_t ;


 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int MIN (int,int ) ;
 int UINT32_MAX ;
 int bcopy (int *,int ,int) ;
 int ebr_entry_decode (int *,struct dos_partition*) ;
 int g_free (int *) ;
 scalar_t__ g_part_new_entry (struct g_part_table*,int,int,int) ;
 int * g_read_data (struct g_consumer*,int,int,int*) ;
 scalar_t__ le64dec (int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
g_part_ebr_read(struct g_part_table *basetable, struct g_consumer *cp)
{
 struct dos_partition ent[2];
 struct g_provider *pp;
 struct g_part_entry *baseentry;
 struct g_part_ebr_table *table;
 struct g_part_ebr_entry *entry;
 u_char *buf;
 off_t ofs, msize;
 u_int lba;
 int error, index;

 pp = cp->provider;
 table = (struct g_part_ebr_table *)basetable;
 msize = MIN(pp->mediasize / pp->sectorsize, UINT32_MAX);

 lba = 0;
 while (1) {
  ofs = (off_t)lba * pp->sectorsize;
  buf = g_read_data(cp, ofs, pp->sectorsize, &error);
  if (buf == ((void*)0))
   return (error);

  ebr_entry_decode(buf + DOSPARTOFF + 0 * DOSPARTSIZE, ent + 0);
  ebr_entry_decode(buf + DOSPARTOFF + 1 * DOSPARTSIZE, ent + 1);


  if (le64dec(buf + DOSPARTOFF + 2 * DOSPARTSIZE) +
      le64dec(buf + DOSPARTOFF + 3 * DOSPARTSIZE) != 0) {
   basetable->gpt_corrupt = 1;
   printf("GEOM: %s: invalid entries in the EBR ignored.\n",
       pp->name);
  }


  if (lba == 0)
   bcopy(buf, table->ebr, sizeof(table->ebr));

  g_free(buf);

  if (ent[0].dp_typ == 0)
   break;

  if (ent[0].dp_typ == 5 && ent[1].dp_typ == 0) {
   lba = ent[0].dp_start;
   continue;
  }

  index = (lba / basetable->gpt_sectors) + 1;
  baseentry = (struct g_part_entry *)g_part_new_entry(basetable,
      index, lba, lba + ent[0].dp_start + ent[0].dp_size - 1);
  baseentry->gpe_offset = (off_t)(lba + ent[0].dp_start) *
      pp->sectorsize;
  entry = (struct g_part_ebr_entry *)baseentry;
  entry->ent = ent[0];

  if (ent[1].dp_typ == 0)
   break;

  lba = ent[1].dp_start;
 }

 basetable->gpt_entries = msize / basetable->gpt_sectors;
 basetable->gpt_first = 0;
 basetable->gpt_last = msize - 1;
 return (0);
}
