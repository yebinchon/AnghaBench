
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idi_vaddr; } ;
struct vmxnet3_softc {TYPE_1__ vmx_mcast_dma; int vmx_mcast; int vmx_dev; int vmx_ctx; } ;


 int ETHER_ADDR_LEN ;
 int VMXNET3_MULTICAST_MAX ;
 int device_printf (int ,char*) ;
 int iflib_dma_alloc_align (int ,int,int,TYPE_1__*,int ) ;

__attribute__((used)) static int
vmxnet3_alloc_mcast_table(struct vmxnet3_softc *sc)
{
 int error;


 error = iflib_dma_alloc_align(sc->vmx_ctx,
     VMXNET3_MULTICAST_MAX * ETHER_ADDR_LEN, 32, &sc->vmx_mcast_dma, 0);
 if (error)
  device_printf(sc->vmx_dev, "unable to alloc multicast table\n");
 else
  sc->vmx_mcast = sc->vmx_mcast_dma.idi_vaddr;

 return (error);
}
