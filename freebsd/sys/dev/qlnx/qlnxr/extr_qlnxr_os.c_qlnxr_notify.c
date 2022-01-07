
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int enet_state; int * ha; } ;
typedef int qlnx_host_t ;
typedef enum qlnx_rdma_event { ____Placeholder_qlnx_rdma_event } qlnx_rdma_event ;


 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int QLNXR_ENET_STATE_BIT ;
 int QLNXR_PORT ;



 int QL_DPRINT12 (int *,char*,void*,int) ;
 int qlnxr_ib_dispatch_event (struct qlnxr_dev*,int ,int ) ;
 int qlnxr_mac_address_change (struct qlnxr_dev*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
qlnxr_notify(void *eth_dev, void *qlnx_rdma_dev, enum qlnx_rdma_event event)
{
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 dev = qlnx_rdma_dev;

 if (dev == ((void*)0))
  return;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter (%p, %d)\n", qlnx_rdma_dev, event);

        switch (event) {

        case 128:
  if (!test_and_set_bit(QLNXR_ENET_STATE_BIT, &dev->enet_state))
   qlnxr_ib_dispatch_event(dev, QLNXR_PORT,
    IB_EVENT_PORT_ACTIVE);
                break;

        case 130:
                qlnxr_mac_address_change(dev);
                break;

        case 129:
  if (test_and_set_bit(QLNXR_ENET_STATE_BIT, &dev->enet_state))
   qlnxr_ib_dispatch_event(dev, QLNXR_PORT,
    IB_EVENT_PORT_ERR);
                break;
        }

 QL_DPRINT12(ha, "exit (%p, %d)\n", qlnx_rdma_dev, event);
 return;
}
