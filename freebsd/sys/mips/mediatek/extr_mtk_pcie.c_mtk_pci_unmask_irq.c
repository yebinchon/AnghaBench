
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTK_PCI_PCIENA ;
 int MT_READ32 (int ,int ) ;
 int MT_WRITE32 (int ,int ,int) ;
 int mt_sc ;

__attribute__((used)) static void
mtk_pci_unmask_irq(void *source)
{

 MT_WRITE32(mt_sc, MTK_PCI_PCIENA,
  MT_READ32(mt_sc, MTK_PCI_PCIENA) | (1<<((int)source)));
}
