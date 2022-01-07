
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTK_PCIE0_IRQ ;
 int MTK_PCIE1_IRQ ;
 int MTK_PCIE2_IRQ ;

__attribute__((used)) static inline int
mtk_irq_to_idx(int irq)
{

 return ((irq == MTK_PCIE0_IRQ) ? 0 :
  (irq == MTK_PCIE1_IRQ) ? 1 :
  (irq == MTK_PCIE2_IRQ) ? 2 : -1);
}
