
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef enum ecore_roce_qp_state { ____Placeholder_ecore_roce_qp_state } ecore_roce_qp_state ;
 int IB_QPS_ERR ;
 int IB_QPS_INIT ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;

__attribute__((used)) static enum ib_qp_state
qlnxr_get_ibqp_state(enum ecore_roce_qp_state qp_state)
{
 enum ib_qp_state state = IB_QPS_ERR;

 switch (qp_state) {
 case 132:
  state = IB_QPS_RESET;
  break;

 case 133:
  state = IB_QPS_INIT;
  break;

 case 131:
  state = IB_QPS_RTR;
  break;

 case 130:
  state = IB_QPS_RTS;
  break;

 case 129:
  state = IB_QPS_SQD;
  break;

 case 134:
  state = IB_QPS_ERR;
  break;

 case 128:
  state = IB_QPS_SQE;
  break;
 }
 return state;
}
