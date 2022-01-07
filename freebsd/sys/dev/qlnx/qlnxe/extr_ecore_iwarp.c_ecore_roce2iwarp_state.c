
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ecore_roce_qp_state { ____Placeholder_ecore_roce_qp_state } ecore_roce_qp_state ;
typedef enum ecore_iwarp_qp_state { ____Placeholder_ecore_iwarp_qp_state } ecore_iwarp_qp_state ;


 int ECORE_IWARP_QP_STATE_CLOSING ;
 int ECORE_IWARP_QP_STATE_ERROR ;
 int ECORE_IWARP_QP_STATE_IDLE ;
 int ECORE_IWARP_QP_STATE_RTS ;
 int ECORE_IWARP_QP_STATE_TERMINATE ;
enum ecore_iwarp_qp_state
ecore_roce2iwarp_state(enum ecore_roce_qp_state state)
{
 switch (state) {
 case 132:
 case 133:
 case 131:
  return ECORE_IWARP_QP_STATE_IDLE;
 case 130:
  return ECORE_IWARP_QP_STATE_RTS;
 case 129:
  return ECORE_IWARP_QP_STATE_CLOSING;
 case 134:
  return ECORE_IWARP_QP_STATE_ERROR;
 case 128:
  return ECORE_IWARP_QP_STATE_TERMINATE;
 }
 return ECORE_IWARP_QP_STATE_ERROR;
}
