
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ecore_iwarp_ep {scalar_t__ connect_mode; scalar_t__ state; int syn; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int ll2_syn_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 scalar_t__ ECORE_IWARP_EP_ABORTING ;
 int OSAL_NULL ;
 scalar_t__ RDMA_RETURN_OK ;
 scalar_t__ TCP_CONNECT_PASSIVE ;
 int ecore_iwarp_ll2_post_rx (struct ecore_hwfn*,int ,int ) ;
 int ecore_iwarp_mpa_offload (struct ecore_hwfn*,struct ecore_iwarp_ep*) ;
 int ecore_iwarp_mpa_received (struct ecore_hwfn*,struct ecore_iwarp_ep*) ;
 int ecore_iwarp_tcp_connect_unsuccessful (struct ecore_hwfn*,struct ecore_iwarp_ep*,scalar_t__) ;

__attribute__((used)) static void
ecore_iwarp_connect_complete(struct ecore_hwfn *p_hwfn,
        struct ecore_iwarp_ep *ep,
        u8 fw_return_code)
{
 if (ep->connect_mode == TCP_CONNECT_PASSIVE) {

  ecore_iwarp_ll2_post_rx(
   p_hwfn, ep->syn,
   p_hwfn->p_rdma_info->iwarp.ll2_syn_handle);

  ep->syn = OSAL_NULL;

  if (ep->state == ECORE_IWARP_EP_ABORTING)
   return;


  if (fw_return_code == RDMA_RETURN_OK)
   ecore_iwarp_mpa_received(p_hwfn, ep);
  else
   ecore_iwarp_tcp_connect_unsuccessful(p_hwfn, ep,
            fw_return_code);

 } else {
  if (fw_return_code == RDMA_RETURN_OK)
   ecore_iwarp_mpa_offload(p_hwfn, ep);
  else
   ecore_iwarp_tcp_connect_unsuccessful(p_hwfn, ep,
            fw_return_code);
 }
}
