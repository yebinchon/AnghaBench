
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int evheap; int fshash; int schedhash; } ;


 int DN_BH_WLOCK () ;
 int DN_BH_WUNLOCK () ;
 int DN_LOCK_DESTROY () ;
 int ND (char*) ;
 int callout_drain (int *) ;
 TYPE_1__ dn_cfg ;
 int dn_gone ;
 int dn_ht_free (int ,int ) ;
 int dn_task ;
 int dn_timeout ;
 int dn_tq ;
 int dummynet_flush () ;
 int heap_free (int *) ;
 int * ip_dn_ctl_ptr ;
 int * ip_dn_io_ptr ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
ip_dn_destroy(int last)
{
 DN_BH_WLOCK();

 dn_gone = 1;


 if (last) {
  ND("removing last instance\n");
  ip_dn_ctl_ptr = ((void*)0);
  ip_dn_io_ptr = ((void*)0);
 }

 dummynet_flush();
 DN_BH_WUNLOCK();

 callout_drain(&dn_timeout);
 taskqueue_drain(dn_tq, &dn_task);
 taskqueue_free(dn_tq);

 dn_ht_free(dn_cfg.schedhash, 0);
 dn_ht_free(dn_cfg.fshash, 0);
 heap_free(&dn_cfg.evheap);

 DN_LOCK_DESTROY();
}
