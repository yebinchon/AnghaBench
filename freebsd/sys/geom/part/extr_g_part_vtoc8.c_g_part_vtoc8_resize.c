
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct g_provider {int mediasize; int sectorsize; } ;
struct TYPE_7__ {TYPE_2__* map; } ;
struct g_part_vtoc8_table {TYPE_3__ vtoc; } ;
struct g_part_table {TYPE_1__* gpt_gp; } ;
struct g_part_parms {int gpp_size; } ;
struct g_part_entry {int gpe_index; scalar_t__ gpe_start; scalar_t__ gpe_end; struct g_provider* gpe_pp; } ;
struct TYPE_8__ {struct g_provider* provider; } ;
struct TYPE_6__ {int nblks; } ;
struct TYPE_5__ {int consumer; } ;


 int EBUSY ;
 int EINVAL ;
 TYPE_4__* LIST_FIRST (int *) ;
 int be32enc (int *,int) ;
 int g_debugflags ;
 scalar_t__ vtoc8_align (struct g_part_vtoc8_table*,int *,int*) ;
 int vtoc8_set_rawsize (struct g_part_table*,struct g_provider*) ;

__attribute__((used)) static int
g_part_vtoc8_resize(struct g_part_table *basetable,
    struct g_part_entry *entry, struct g_part_parms *gpp)
{
 struct g_part_vtoc8_table *table;
 struct g_provider *pp;
 uint64_t size;

 if (entry == ((void*)0)) {
  pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;
  return (vtoc8_set_rawsize(basetable, pp));
 }
 table = (struct g_part_vtoc8_table *)basetable;
 size = gpp->gpp_size;
 if (vtoc8_align(table, ((void*)0), &size) != 0)
  return (EINVAL);

 pp = entry->gpe_pp;
 if ((g_debugflags & 0x10) == 0 && size < gpp->gpp_size &&
     pp->mediasize / pp->sectorsize > size)
  return (EBUSY);
 entry->gpe_end = entry->gpe_start + size - 1;
 be32enc(&table->vtoc.map[entry->gpe_index - 1].nblks, size);

 return (0);
}
