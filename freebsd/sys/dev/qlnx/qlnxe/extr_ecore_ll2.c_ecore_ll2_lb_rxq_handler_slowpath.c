
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ooo_opaque {scalar_t__ ooo_opcode; int cid; } ;
struct ecore_hwfn {int p_ooo_info; } ;
struct core_rx_slow_path_cqe {scalar_t__ ramrod_cmd_id; int opaque_data; } ;


 scalar_t__ CORE_RAMROD_RX_QUEUE_FLUSH ;
 int OSAL_LE32_TO_CPU (int ) ;
 scalar_t__ TCP_EVENT_DELETE_ISLES ;
 int ecore_ooo_release_connection_isles (int ,int ) ;

__attribute__((used)) static bool
ecore_ll2_lb_rxq_handler_slowpath(struct ecore_hwfn *p_hwfn,
      struct core_rx_slow_path_cqe *p_cqe)
{
 struct ooo_opaque *iscsi_ooo;
 u32 cid;

 if (p_cqe->ramrod_cmd_id != CORE_RAMROD_RX_QUEUE_FLUSH)
  return 0;

 iscsi_ooo = (struct ooo_opaque *)&p_cqe->opaque_data;
 if (iscsi_ooo->ooo_opcode != TCP_EVENT_DELETE_ISLES)
  return 0;


 cid = OSAL_LE32_TO_CPU(iscsi_ooo->cid);
 ecore_ooo_release_connection_isles(p_hwfn->p_ooo_info, cid);

 return 1;
}
