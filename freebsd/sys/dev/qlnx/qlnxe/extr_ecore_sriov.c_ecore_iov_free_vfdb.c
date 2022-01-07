
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_pf_iov {int bulletins_size; int bulletins_phys; scalar_t__ p_bulletins; int mbx_reply_size; int mbx_reply_phys_addr; scalar_t__ mbx_reply_virt_addr; int mbx_msg_size; int mbx_msg_phys_addr; scalar_t__ mbx_msg_virt_addr; } ;
struct ecore_hwfn {int p_dev; struct ecore_pf_iov* pf_iov_info; } ;


 int OSAL_DMA_FREE_COHERENT (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void ecore_iov_free_vfdb(struct ecore_hwfn *p_hwfn)
{
 struct ecore_pf_iov *p_iov_info = p_hwfn->pf_iov_info;

 if (p_hwfn->pf_iov_info->mbx_msg_virt_addr)
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           p_iov_info->mbx_msg_virt_addr,
           p_iov_info->mbx_msg_phys_addr,
           p_iov_info->mbx_msg_size);

 if (p_hwfn->pf_iov_info->mbx_reply_virt_addr)
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           p_iov_info->mbx_reply_virt_addr,
           p_iov_info->mbx_reply_phys_addr,
           p_iov_info->mbx_reply_size);

 if (p_iov_info->p_bulletins)
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           p_iov_info->p_bulletins,
           p_iov_info->bulletins_phys,
           p_iov_info->bulletins_size);
}
