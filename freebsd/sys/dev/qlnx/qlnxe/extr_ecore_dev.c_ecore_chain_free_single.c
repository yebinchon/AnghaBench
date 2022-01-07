
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int dummy; } ;
struct ecore_chain {int p_phys_addr; int p_virt_addr; } ;


 int ECORE_CHAIN_PAGE_SIZE ;
 int OSAL_DMA_FREE_COHERENT (struct ecore_dev*,int ,int ,int ) ;

__attribute__((used)) static void ecore_chain_free_single(struct ecore_dev *p_dev,
        struct ecore_chain *p_chain)
{
 if (!p_chain->p_virt_addr)
  return;

 OSAL_DMA_FREE_COHERENT(p_dev, p_chain->p_virt_addr,
          p_chain->p_phys_addr, ECORE_CHAIN_PAGE_SIZE);
}
