
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlnxr_iw_ep {struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int rdma_ctx; TYPE_2__* ha; } ;
struct ecore_iwarp_send_rtr_in {int ep_context; } ;
struct ecore_iwarp_cm_event_params {int ep_context; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_4__ {int if_drv_flags; } ;


 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int QL_DPRINT12 (TYPE_2__*,char*,...) ;
 int bzero (struct ecore_iwarp_send_rtr_in*,int) ;
 int ecore_iwarp_send_rtr (int ,struct ecore_iwarp_send_rtr_in*) ;

__attribute__((used)) static int
qlnxr_iw_mpa_reply(void *context,
 struct ecore_iwarp_cm_event_params *params)
{
        struct qlnxr_iw_ep *ep = (struct qlnxr_iw_ep *)context;
        struct qlnxr_dev *dev = ep->dev;
        struct ecore_iwarp_send_rtr_in rtr_in;
        int rc;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (!(ha->ifp->if_drv_flags & IFF_DRV_RUNNING))
  return -EINVAL;

 bzero(&rtr_in, sizeof(struct ecore_iwarp_send_rtr_in));
        rtr_in.ep_context = params->ep_context;

        rc = ecore_iwarp_send_rtr(dev->rdma_ctx, &rtr_in);

 QL_DPRINT12(ha, "exit rc = %d\n", rc);
        return rc;
}
