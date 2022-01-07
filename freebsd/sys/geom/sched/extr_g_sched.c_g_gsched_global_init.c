
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gs_initialized; int gs_pending; int gs_scheds; int gs_mtx; } ;


 int G_SCHED_DEBUG (int ,char*) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int bioq_init (int *) ;
 TYPE_1__ me ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static inline void
g_gsched_global_init(void)
{

 if (!me.gs_initialized) {
  G_SCHED_DEBUG(0, "Initializing global data.");
  mtx_init(&me.gs_mtx, "gsched", ((void*)0), MTX_DEF);
  LIST_INIT(&me.gs_scheds);
  bioq_init(&me.gs_pending);
  me.gs_initialized = 1;
 }
}
