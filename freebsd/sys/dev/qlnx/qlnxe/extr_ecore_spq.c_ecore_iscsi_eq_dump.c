
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_code; int conn_id; int icid; } ;
struct TYPE_4__ {TYPE_1__ iscsi_info; } ;
struct event_ring_entry {int opcode; TYPE_2__ data; int fw_return_code; int echo; } ;
struct ecore_hwfn {int port_id; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int,int ,int ,int ,int ,int ) ;
 int ECORE_MSG_STORAGE ;
 int MAX_ISCSI_EQE_OPCODE ;
 int OSAL_LE16_TO_CPU (int ) ;

__attribute__((used)) static void ecore_iscsi_eq_dump(struct ecore_hwfn *p_hwfn,
    struct event_ring_entry *p_eqe)
{
 if (p_eqe->opcode >= MAX_ISCSI_EQE_OPCODE) {
  DP_NOTICE(p_hwfn, 0, "Unknown iSCSI EQ: %x\n",
     p_eqe->opcode);
 }

 switch (p_eqe->opcode) {
 case 133:
 case 134:

  break;
 case 131:
 case 129:
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
      "iSCSI EQE: Port %x, Op %x, echo %x, FWret %x, CID %x, ConnID %x, ERR %x\n",
      p_hwfn->port_id, p_eqe->opcode,
      OSAL_LE16_TO_CPU(p_eqe->echo),
      p_eqe->fw_return_code,
      OSAL_LE16_TO_CPU(p_eqe->data.iscsi_info.icid),
      OSAL_LE16_TO_CPU(p_eqe->data.iscsi_info.conn_id),
      p_eqe->data.iscsi_info.error_code);
  break;
 case 128:
 case 135:
 case 142:
 case 136:
 case 144:
 case 143:
 case 137:
 case 138:
 case 139:
 case 140:
 case 141:
 case 132:
 case 130:
 default:

  break;
 }
}
