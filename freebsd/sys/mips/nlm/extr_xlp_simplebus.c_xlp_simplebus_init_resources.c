
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rm_end; char* rm_descr; void* rm_type; scalar_t__ rm_start; } ;


 int GBU_MEM_BASE ;
 int GBU_MEM_LIMIT ;
 int PCIE_IO_BASE ;
 int PCIE_IO_LIMIT ;
 int PCIE_MEM_BASE ;
 int PCIE_MEM_LIMIT ;
 int PCI_ECFG_BASE ;
 int PCI_ECFG_LIMIT ;
 void* RMAN_ARRAY ;
 TYPE_1__ gbu_rman ;
 TYPE_1__ irq_rman ;
 TYPE_1__ mem_rman ;
 int panic (char*) ;
 TYPE_1__ pci_ecfg_rman ;
 TYPE_1__ port_rman ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
xlp_simplebus_init_resources(void)
{
 irq_rman.rm_start = 0;
 irq_rman.rm_end = 255;
 irq_rman.rm_type = RMAN_ARRAY;
 irq_rman.rm_descr = "PCI Mapped Interrupts";
 if (rman_init(&irq_rman)
     || rman_manage_region(&irq_rman, 0, 255))
  panic("xlp_simplebus_init_resources irq_rman");

 port_rman.rm_type = RMAN_ARRAY;
 port_rman.rm_descr = "I/O ports";
 if (rman_init(&port_rman)
     || rman_manage_region(&port_rman, PCIE_IO_BASE, PCIE_IO_LIMIT))
  panic("xlp_simplebus_init_resources port_rman");

 mem_rman.rm_type = RMAN_ARRAY;
 mem_rman.rm_descr = "I/O memory";
 if (rman_init(&mem_rman)
     || rman_manage_region(&mem_rman, PCIE_MEM_BASE, PCIE_MEM_LIMIT))
  panic("xlp_simplebus_init_resources mem_rman");

 pci_ecfg_rman.rm_type = RMAN_ARRAY;
 pci_ecfg_rman.rm_descr = "PCI ECFG IO";
 if (rman_init(&pci_ecfg_rman) || rman_manage_region(&pci_ecfg_rman,
     PCI_ECFG_BASE, PCI_ECFG_LIMIT))
  panic("xlp_simplebus_init_resources pci_ecfg_rman");

 gbu_rman.rm_type = RMAN_ARRAY;
 gbu_rman.rm_descr = "Flash region";
 if (rman_init(&gbu_rman)
     || rman_manage_region(&gbu_rman, GBU_MEM_BASE, GBU_MEM_LIMIT))
  panic("xlp_simplebus_init_resources gbu_rman");
}
