
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_rxq_start_ret_params {void* p_handle; int p_prod; } ;
struct ecore_queue_start_common_params {int dummy; } ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_PF (int ) ;
 struct ecore_queue_cid* OSAL_NULL ;
 int ecore_eth_pf_rx_queue_start (struct ecore_hwfn*,struct ecore_queue_cid*,int ,int ,int ,int ,int *) ;
 int ecore_eth_queue_cid_release (struct ecore_hwfn*,struct ecore_queue_cid*) ;
 struct ecore_queue_cid* ecore_eth_queue_to_cid_pf (struct ecore_hwfn*,int ,int,struct ecore_queue_start_common_params*) ;
 int ecore_vf_pf_rxq_start (struct ecore_hwfn*,struct ecore_queue_cid*,int ,int ,int ,int ,int *) ;

enum _ecore_status_t
ecore_eth_rx_queue_start(struct ecore_hwfn *p_hwfn,
    u16 opaque_fid,
    struct ecore_queue_start_common_params *p_params,
    u16 bd_max_bytes,
    dma_addr_t bd_chain_phys_addr,
    dma_addr_t cqe_pbl_addr,
    u16 cqe_pbl_size,
    struct ecore_rxq_start_ret_params *p_ret_params)
{
 struct ecore_queue_cid *p_cid;
 enum _ecore_status_t rc;


 p_cid = ecore_eth_queue_to_cid_pf(p_hwfn, opaque_fid, 1, p_params);
 if (p_cid == OSAL_NULL)
  return ECORE_NOMEM;

 if (IS_PF(p_hwfn->p_dev))
  rc = ecore_eth_pf_rx_queue_start(p_hwfn, p_cid,
       bd_max_bytes,
       bd_chain_phys_addr,
       cqe_pbl_addr, cqe_pbl_size,
       &p_ret_params->p_prod);
 else
  rc = ecore_vf_pf_rxq_start(p_hwfn, p_cid,
        bd_max_bytes,
        bd_chain_phys_addr,
        cqe_pbl_addr,
        cqe_pbl_size,
        &p_ret_params->p_prod);


 if (rc != ECORE_SUCCESS)
  ecore_eth_queue_cid_release(p_hwfn, p_cid);
 else
  p_ret_params->p_handle = (void *)p_cid;

 return rc;
}
