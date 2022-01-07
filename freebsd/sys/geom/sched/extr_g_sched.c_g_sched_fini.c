
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_class {int dummy; } ;
struct TYPE_2__ {int gs_mtx; int gs_scheds; } ;


 int G_SCHED_DEBUG (int ,char*) ;
 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int g_classifier_fini () ;
 TYPE_1__ me ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
g_sched_fini(struct g_class *mp)
{

 g_classifier_fini();

 G_SCHED_DEBUG(0, "Unloading...");

 KASSERT(LIST_EMPTY(&me.gs_scheds), ("still registered schedulers"));
 mtx_destroy(&me.gs_mtx);
}
