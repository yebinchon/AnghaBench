
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct g_part_table {int gpt_entries; int gpt_entry; } ;
struct g_part_mbr_table {int * mbr; } ;
struct TYPE_3__ {int dp_size; int dp_start; int dp_ecyl; int dp_esect; int dp_ehd; int dp_typ; int dp_scyl; int dp_ssect; int dp_shd; int dp_flag; } ;
struct g_part_mbr_entry {TYPE_1__ ent; } ;
struct g_part_entry {int gpe_index; int gpe_deleted; } ;
struct g_consumer {TYPE_2__* provider; } ;
struct TYPE_4__ {int sectorsize; } ;


 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 struct g_part_entry* LIST_FIRST (int *) ;
 struct g_part_entry* LIST_NEXT (struct g_part_entry*,int ) ;
 int bzero (int *,int) ;
 int g_write_data (struct g_consumer*,int ,int *,int ) ;
 int gpe_entry ;
 int le32enc (int *,int ) ;

__attribute__((used)) static int
g_part_mbr_write(struct g_part_table *basetable, struct g_consumer *cp)
{
 struct g_part_entry *baseentry;
 struct g_part_mbr_entry *entry;
 struct g_part_mbr_table *table;
 u_char *p;
 int error, index;

 table = (struct g_part_mbr_table *)basetable;
 baseentry = LIST_FIRST(&basetable->gpt_entry);
 for (index = 1; index <= basetable->gpt_entries; index++) {
  p = table->mbr + DOSPARTOFF + (index - 1) * DOSPARTSIZE;
  entry = (baseentry != ((void*)0) && index == baseentry->gpe_index)
      ? (struct g_part_mbr_entry *)baseentry : ((void*)0);
  if (entry != ((void*)0) && !baseentry->gpe_deleted) {
   p[0] = entry->ent.dp_flag;
   p[1] = entry->ent.dp_shd;
   p[2] = entry->ent.dp_ssect;
   p[3] = entry->ent.dp_scyl;
   p[4] = entry->ent.dp_typ;
   p[5] = entry->ent.dp_ehd;
   p[6] = entry->ent.dp_esect;
   p[7] = entry->ent.dp_ecyl;
   le32enc(p + 8, entry->ent.dp_start);
   le32enc(p + 12, entry->ent.dp_size);
  } else
   bzero(p, DOSPARTSIZE);

  if (entry != ((void*)0))
   baseentry = LIST_NEXT(baseentry, gpe_entry);
 }

 error = g_write_data(cp, 0, table->mbr, cp->provider->sectorsize);
 return (error);
}
