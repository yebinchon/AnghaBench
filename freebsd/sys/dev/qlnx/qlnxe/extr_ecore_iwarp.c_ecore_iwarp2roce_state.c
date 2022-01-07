
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ecore_roce_qp_state { ____Placeholder_ecore_roce_qp_state } ecore_roce_qp_state ;
typedef enum ecore_iwarp_qp_state { ____Placeholder_ecore_iwarp_qp_state } ecore_iwarp_qp_state ;







 int ECORE_ROCE_QP_STATE_ERR ;
 int ECORE_ROCE_QP_STATE_INIT ;
 int ECORE_ROCE_QP_STATE_RTS ;
 int ECORE_ROCE_QP_STATE_SQD ;
 int ECORE_ROCE_QP_STATE_SQE ;

__attribute__((used)) static enum ecore_roce_qp_state
ecore_iwarp2roce_state(enum ecore_iwarp_qp_state state)
{
 switch (state) {
 case 130:
  return ECORE_ROCE_QP_STATE_INIT;
 case 129:
  return ECORE_ROCE_QP_STATE_RTS;
 case 128:
  return ECORE_ROCE_QP_STATE_SQE;
 case 132:
  return ECORE_ROCE_QP_STATE_SQD;
 case 131:
  return ECORE_ROCE_QP_STATE_ERR;
 }
 return ECORE_ROCE_QP_STATE_ERR;
}
