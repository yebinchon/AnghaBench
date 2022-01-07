
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicpf {TYPE_1__* msix_entries; int dev; } ;
struct TYPE_2__ {int handle; int * irq_res; } ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int NIC_PF_INTR_ID_MBOX0 ;
 int NIC_PF_INTR_ID_MBOX1 ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct nicpf*,int *) ;
 int nic_enable_mbx_intr (struct nicpf*) ;
 int nic_enable_msix (struct nicpf*) ;
 int nic_free_all_interrupts (struct nicpf*) ;
 int nic_mbx0_intr_handler ;
 int nic_mbx1_intr_handler ;

__attribute__((used)) static int
nic_register_interrupts(struct nicpf *nic)
{
 int irq, rid;
 int ret;


 ret = nic_enable_msix(nic);
 if (ret != 0)
  return (ret);


 irq = NIC_PF_INTR_ID_MBOX0;
 rid = irq + 1;
 nic->msix_entries[irq].irq_res = bus_alloc_resource_any(nic->dev,
     SYS_RES_IRQ, &rid, (RF_SHAREABLE | RF_ACTIVE));
 if (nic->msix_entries[irq].irq_res == ((void*)0)) {
  ret = ENXIO;
  goto fail;
 }
 ret = bus_setup_intr(nic->dev, nic->msix_entries[irq].irq_res,
     (INTR_MPSAFE | INTR_TYPE_MISC), ((void*)0), nic_mbx0_intr_handler, nic,
     &nic->msix_entries[irq].handle);
 if (ret != 0)
  goto fail;

 irq = NIC_PF_INTR_ID_MBOX1;
 rid = irq + 1;
 nic->msix_entries[irq].irq_res = bus_alloc_resource_any(nic->dev,
     SYS_RES_IRQ, &rid, (RF_SHAREABLE | RF_ACTIVE));
 if (nic->msix_entries[irq].irq_res == ((void*)0)) {
  ret = ENXIO;
  goto fail;
 }
 ret = bus_setup_intr(nic->dev, nic->msix_entries[irq].irq_res,
     (INTR_MPSAFE | INTR_TYPE_MISC), ((void*)0), nic_mbx1_intr_handler, nic,
     &nic->msix_entries[irq].handle);
 if (ret != 0)
  goto fail;


 nic_enable_mbx_intr(nic);
 return (0);

fail:
 nic_free_all_interrupts(nic);
 return (ret);
}
