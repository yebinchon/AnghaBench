
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
 int MTHCA_QP_STATE_ERR ;
 int MTHCA_QP_STATE_INIT ;
 int MTHCA_QP_STATE_RST ;
 int MTHCA_QP_STATE_RTR ;
 int MTHCA_QP_STATE_RTS ;
 int MTHCA_QP_STATE_SQD ;
 int MTHCA_QP_STATE_SQE ;

__attribute__((used)) static int to_mthca_state(enum ib_qp_state ib_state)
{
 switch (ib_state) {
 case 132: return MTHCA_QP_STATE_RST;
 case 133: return MTHCA_QP_STATE_INIT;
 case 131: return MTHCA_QP_STATE_RTR;
 case 130: return MTHCA_QP_STATE_RTS;
 case 129: return MTHCA_QP_STATE_SQD;
 case 128: return MTHCA_QP_STATE_SQE;
 case 134: return MTHCA_QP_STATE_ERR;
 default: return -1;
 }
}
