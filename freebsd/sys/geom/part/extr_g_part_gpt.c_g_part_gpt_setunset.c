
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_table {TYPE_1__* gpt_gp; } ;
struct g_part_gpt_table {int* mbr; scalar_t__ bootcamp; } ;
struct TYPE_5__ {int ent_attr; } ;
struct g_part_gpt_entry {TYPE_2__ ent; } ;
struct g_part_entry {int gpe_index; int gpe_modified; int gpe_created; } ;
struct TYPE_6__ {struct g_provider* provider; } ;
struct TYPE_4__ {int consumer; } ;


 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int GPT_ENT_ATTR_BOOTFAILED ;
 int GPT_ENT_ATTR_BOOTME ;
 int GPT_ENT_ATTR_BOOTONCE ;
 TYPE_3__* LIST_FIRST (int *) ;
 int MIN (int,int ) ;
 int NDOSPART ;
 int UINT32_MAX ;
 int bzero (int*,int) ;
 int gpt_write_mbr_entry (int*,int,int,int,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int
g_part_gpt_setunset(struct g_part_table *basetable,
    struct g_part_entry *baseentry, const char *attrib, unsigned int set)
{
 struct g_part_gpt_entry *entry;
 struct g_part_gpt_table *table;
 struct g_provider *pp;
 uint8_t *p;
 uint64_t attr;
 int i;

 table = (struct g_part_gpt_table *)basetable;
 entry = (struct g_part_gpt_entry *)baseentry;

 if (strcasecmp(attrib, "active") == 0) {
  if (table->bootcamp) {

   if (entry == ((void*)0))
    return (ENXIO);
   if (baseentry->gpe_index > NDOSPART)
    return (EINVAL);
   for (i = 0; i < NDOSPART; i++) {
    p = &table->mbr[DOSPARTOFF + i * DOSPARTSIZE];
    p[0] = (i == baseentry->gpe_index - 1)
        ? ((set) ? 0x80 : 0) : 0;
   }
  } else {

   if (entry != ((void*)0))
    return (ENXIO);
   for (i = 0; i < NDOSPART; i++) {
    p = &table->mbr[DOSPARTOFF + i * DOSPARTSIZE];
    p[0] = (p[4] == 0xee) ? ((set) ? 0x80 : 0) : 0;
   }
  }
  return (0);
 } else if (strcasecmp(attrib, "lenovofix") == 0) {






  if (entry != ((void*)0))
   return (ENXIO);

  pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;
  bzero(table->mbr + DOSPARTOFF, DOSPARTSIZE * NDOSPART);
  gpt_write_mbr_entry(table->mbr, ((set) ? 1 : 0), 0xee, 1,
      MIN(pp->mediasize / pp->sectorsize - 1, UINT32_MAX));
  return (0);
 }

 if (entry == ((void*)0))
  return (ENODEV);

 attr = 0;
 if (strcasecmp(attrib, "bootme") == 0) {
  attr |= GPT_ENT_ATTR_BOOTME;
 } else if (strcasecmp(attrib, "bootonce") == 0) {
  attr |= GPT_ENT_ATTR_BOOTONCE;
  if (set)
   attr |= GPT_ENT_ATTR_BOOTME;
 } else if (strcasecmp(attrib, "bootfailed") == 0) {




  attr |= GPT_ENT_ATTR_BOOTFAILED;
 }
 if (attr == 0)
  return (EINVAL);

 if (set)
  attr = entry->ent.ent_attr | attr;
 else
  attr = entry->ent.ent_attr & ~attr;
 if (attr != entry->ent.ent_attr) {
  entry->ent.ent_attr = attr;
  if (!baseentry->gpe_created)
   baseentry->gpe_modified = 1;
 }
 return (0);
}
