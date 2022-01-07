
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTK_PCIE0_IRQ ;
 int MTK_PCIE1_IRQ ;
 int MTK_PCIE2_IRQ ;

__attribute__((used)) static inline int
mtk_idx_to_irq(int idx)
{

 return ((idx == 0) ? MTK_PCIE0_IRQ :
  (idx == 1) ? MTK_PCIE1_IRQ :
  (idx == 2) ? MTK_PCIE2_IRQ : -1);
}
