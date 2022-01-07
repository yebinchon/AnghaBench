
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int * registers; int * memory; int pdev; } ;
typedef int device_t ;


 int ENA_MEM_BAR ;
 int ENA_REG_BAR ;
 int PCIR_BAR (int ) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
ena_free_pci_resources(struct ena_adapter *adapter)
{
 device_t pdev = adapter->pdev;

 if (adapter->memory != ((void*)0)) {
  bus_release_resource(pdev, SYS_RES_MEMORY,
      PCIR_BAR(ENA_MEM_BAR), adapter->memory);
 }

 if (adapter->registers != ((void*)0)) {
  bus_release_resource(pdev, SYS_RES_MEMORY,
      PCIR_BAR(ENA_REG_BAR), adapter->registers);
 }
}
