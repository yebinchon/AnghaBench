
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef enum ecore_roce_qp_state { ____Placeholder_ecore_roce_qp_state } ecore_roce_qp_state ;


 int ECORE_ROCE_QP_STATE_ERR ;
 int ECORE_ROCE_QP_STATE_INIT ;
 int ECORE_ROCE_QP_STATE_RESET ;
 int ECORE_ROCE_QP_STATE_RTR ;
 int ECORE_ROCE_QP_STATE_RTS ;
 int ECORE_ROCE_QP_STATE_SQD ;







__attribute__((used)) static enum ecore_roce_qp_state
qlnxr_get_state_from_ibqp( enum ib_qp_state qp_state)
{
 enum ecore_roce_qp_state ecore_qp_state;

 ecore_qp_state = ECORE_ROCE_QP_STATE_ERR;

 switch (qp_state) {
 case 131:
  ecore_qp_state = ECORE_ROCE_QP_STATE_RESET;
  break;

 case 132:
  ecore_qp_state = ECORE_ROCE_QP_STATE_INIT;
  break;

 case 130:
  ecore_qp_state = ECORE_ROCE_QP_STATE_RTR;
  break;

 case 129:
  ecore_qp_state = ECORE_ROCE_QP_STATE_RTS;
  break;

 case 128:
  ecore_qp_state = ECORE_ROCE_QP_STATE_SQD;
  break;

 case 133:
  ecore_qp_state = ECORE_ROCE_QP_STATE_ERR;
  break;

 default:
  ecore_qp_state = ECORE_ROCE_QP_STATE_ERR;
  break;
 }

 return (ecore_qp_state);
}
