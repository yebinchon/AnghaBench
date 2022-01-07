
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_rdma_qp {int iwarp_state; int icid; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum ecore_iwarp_qp_state { ____Placeholder_ecore_iwarp_qp_state } ecore_iwarp_qp_state ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int qp_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ,char*) ;
 int ECORE_INVAL ;





 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_iwarp_modify_fw (struct ecore_hwfn*,struct ecore_rdma_qp*) ;
 int * iwarp_state_names ;

enum _ecore_status_t
ecore_iwarp_modify_qp(struct ecore_hwfn *p_hwfn,
        struct ecore_rdma_qp *qp,
        enum ecore_iwarp_qp_state new_state,
        bool internal)
{
 enum ecore_iwarp_qp_state prev_iw_state;
 enum _ecore_status_t rc = 0;
 bool modify_fw = 0;




 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->iwarp.qp_lock);
 prev_iw_state = qp->iwarp_state;

 if (prev_iw_state == new_state) {
  OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->iwarp.qp_lock);
  return ECORE_SUCCESS;
 }

 switch (prev_iw_state) {
 case 130:
  switch (new_state) {
  case 129:
   qp->iwarp_state = 129;
   break;
  case 131:
   qp->iwarp_state = 131;
   if (!internal)
    modify_fw = 1;
   break;
  default:
   break;
  }
  break;
 case 129:
  switch (new_state) {
  case 132:
   if (!internal)
    modify_fw = 1;

   qp->iwarp_state = 132;
   break;
  case 131:
   if (!internal)
    modify_fw = 1;
   qp->iwarp_state = 131;
   break;
  default:
   break;
  }
  break;
 case 131:
  switch (new_state) {
  case 130:

   qp->iwarp_state = new_state;
   break;
  case 132:

   break;
  default:
   rc = ECORE_INVAL;
  }
  break;
 case 128:
 case 132:
  qp->iwarp_state = new_state;
  break;
 default:
  break;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "QP(0x%x) %s --> %s %s\n",
     qp->icid,
     iwarp_state_names[prev_iw_state],
     iwarp_state_names[qp->iwarp_state],
     internal ? "internal" : " ");

 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->iwarp.qp_lock);

 if (modify_fw)
  ecore_iwarp_modify_fw(p_hwfn, qp);

 return rc;
}
