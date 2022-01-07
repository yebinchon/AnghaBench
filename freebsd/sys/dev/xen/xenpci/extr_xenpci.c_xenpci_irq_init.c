
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenpci_softc {int res_irq; int intr_cookie; } ;
typedef int device_t ;


 int BUS_BIND_INTR (int ,int ,int ,int ) ;
 int BUS_SETUP_INTR (int ,int ,int ,int,int ,int *,int *,int *) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int device_get_parent (int ) ;
 int xen_hvm_set_callback (int ) ;
 int xenpci_intr_filter ;

__attribute__((used)) static int
xenpci_irq_init(device_t device, struct xenpci_softc *scp)
{
 int error;

 error = BUS_SETUP_INTR(device_get_parent(device), device,
          scp->res_irq, INTR_MPSAFE|INTR_TYPE_MISC,
          xenpci_intr_filter, ((void*)0), ((void*)0),
          &scp->intr_cookie);
 if (error)
  return error;
 xen_hvm_set_callback(device);
 return (0);
}
