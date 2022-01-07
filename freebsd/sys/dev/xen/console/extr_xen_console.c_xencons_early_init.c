
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; int mtx; } ;
struct TYPE_5__ {int (* early_init ) (TYPE_3__*) ;} ;


 int MTX_SPIN ;
 TYPE_3__ main_cons ;
 int mtx_init (int *,char*,int *,int ) ;
 int stub1 (TYPE_3__*) ;
 scalar_t__ xen_get_console_evtchn () ;
 TYPE_1__ xencons_hypervisor_ops ;
 TYPE_1__ xencons_ring_ops ;

__attribute__((used)) static void
xencons_early_init(void)
{

 mtx_init(&main_cons.mtx, "XCONS LOCK", ((void*)0), MTX_SPIN);

 if (xen_get_console_evtchn() == 0)
  main_cons.ops = &xencons_hypervisor_ops;
 else
  main_cons.ops = &xencons_ring_ops;

 main_cons.ops->early_init(&main_cons);
}
