
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rsp_prod; scalar_t__ rsp_cons; } ;
struct TYPE_3__ {int xen_intr_handle; int evtchn; int xs_dev; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int LOG_WARNING ;
 int log (int ,char*,int,...) ;
 int xen_intr_bind_local_port (int ,int ,int *,int ,int *,int,int *) ;
 int xen_intr_unbind (int *) ;
 TYPE_2__* xen_store ;
 TYPE_1__ xs ;
 int xs_intr ;

__attribute__((used)) static int
xs_init_comms(void)
{
 int error;

 if (xen_store->rsp_prod != xen_store->rsp_cons) {
  log(LOG_WARNING, "XENSTORE response ring is not quiescent "
      "(%08x:%08x): fixing up\n",
      xen_store->rsp_cons, xen_store->rsp_prod);
  xen_store->rsp_cons = xen_store->rsp_prod;
 }

 xen_intr_unbind(&xs.xen_intr_handle);

 error = xen_intr_bind_local_port(xs.xs_dev, xs.evtchn,
               ((void*)0), xs_intr, ((void*)0), INTR_TYPE_NET|INTR_MPSAFE,
     &xs.xen_intr_handle);
 if (error) {
  log(LOG_WARNING, "XENSTORE request irq failed %i\n", error);
  return (error);
 }

 return (0);
}
