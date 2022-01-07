
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_queue_start_common_params {int dummy; } ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int OSAL_NULL ;
 struct ecore_queue_cid* ecore_eth_queue_to_cid (struct ecore_hwfn*,int ,struct ecore_queue_start_common_params*,int,int ) ;

__attribute__((used)) static struct ecore_queue_cid *
ecore_eth_queue_to_cid_pf(struct ecore_hwfn *p_hwfn, u16 opaque_fid,
     bool b_is_rx,
     struct ecore_queue_start_common_params *p_params)
{
 return ecore_eth_queue_to_cid(p_hwfn, opaque_fid, p_params, b_is_rx,
          OSAL_NULL);
}
