
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int * private; } ;
struct g_part_table {int gpt_entry; } ;
struct g_part_entry {struct g_provider* gpe_pp; } ;
struct g_geom {struct g_part_table* softc; } ;
typedef int kobj_t ;


 int G_PART_DESTROY (struct g_part_table*,int *) ;
 struct g_part_entry* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct g_part_entry*,int ) ;
 int M_GEOM ;
 int g_free (struct g_part_entry*) ;
 int g_wither_geom (struct g_geom*,int) ;
 int g_wither_provider (struct g_provider*,int) ;
 int gpe_entry ;
 int kobj_delete (int ,int ) ;

__attribute__((used)) static void
g_part_wither(struct g_geom *gp, int error)
{
 struct g_part_entry *entry;
 struct g_part_table *table;
 struct g_provider *pp;

 table = gp->softc;
 if (table != ((void*)0)) {
  gp->softc = ((void*)0);
  while ((entry = LIST_FIRST(&table->gpt_entry)) != ((void*)0)) {
   LIST_REMOVE(entry, gpe_entry);
   pp = entry->gpe_pp;
   entry->gpe_pp = ((void*)0);
   if (pp != ((void*)0)) {
    pp->private = ((void*)0);
    g_wither_provider(pp, error);
   }
   g_free(entry);
  }
  G_PART_DESTROY(table, ((void*)0));
  kobj_delete((kobj_t)table, M_GEOM);
 }
 g_wither_geom(gp, error);
}
