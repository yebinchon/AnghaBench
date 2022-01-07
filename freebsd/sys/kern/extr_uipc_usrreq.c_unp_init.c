
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IS_DEFAULT_VNET (int ) ;
 int LIST_INIT (int *) ;
 int SLIST_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,int *) ;
 int TIMEOUT_TASK_INIT (int ,int *,int ,int ,int *) ;
 int UMA_ALIGN_CACHE ;
 int UNP_DEFERRED_LOCK_INIT () ;
 int UNP_LINK_LOCK_INIT () ;
 int curvnet ;
 int maxsockets ;
 int maxsockets_change ;
 int panic (char*) ;
 int taskqueue_thread ;
 int * uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int *,int ) ;
 int uma_zone_set_warning (int *,char*) ;
 int unp_defer_task ;
 int unp_defers ;
 int unp_dhead ;
 int unp_gc ;
 int unp_gc_task ;
 int unp_process_defers ;
 int unp_shead ;
 int unp_sphead ;
 int * unp_zone ;
 int unp_zone_change ;

__attribute__((used)) static void
unp_init(void)
{





 unp_zone = uma_zcreate("unpcb", sizeof(struct unpcb), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_CACHE, 0);
 if (unp_zone == ((void*)0))
  panic("unp_init");
 uma_zone_set_max(unp_zone, maxsockets);
 uma_zone_set_warning(unp_zone, "kern.ipc.maxsockets limit reached");
 EVENTHANDLER_REGISTER(maxsockets_change, unp_zone_change,
     ((void*)0), EVENTHANDLER_PRI_ANY);
 LIST_INIT(&unp_dhead);
 LIST_INIT(&unp_shead);
 LIST_INIT(&unp_sphead);
 SLIST_INIT(&unp_defers);
 TIMEOUT_TASK_INIT(taskqueue_thread, &unp_gc_task, 0, unp_gc, ((void*)0));
 TASK_INIT(&unp_defer_task, 0, unp_process_defers, ((void*)0));
 UNP_LINK_LOCK_INIT();
 UNP_DEFERRED_LOCK_INIT();
}
