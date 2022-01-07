
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx4_qp_state { ____Placeholder_mlx4_qp_state } mlx4_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
 int MLX4_QP_STATE_ERR ;
 int MLX4_QP_STATE_INIT ;
 int MLX4_QP_STATE_RST ;
 int MLX4_QP_STATE_RTR ;
 int MLX4_QP_STATE_RTS ;
 int MLX4_QP_STATE_SQD ;
 int MLX4_QP_STATE_SQER ;

__attribute__((used)) static enum mlx4_qp_state to_mlx4_state(enum ib_qp_state state)
{
 switch (state) {
 case 132: return MLX4_QP_STATE_RST;
 case 133: return MLX4_QP_STATE_INIT;
 case 131: return MLX4_QP_STATE_RTR;
 case 130: return MLX4_QP_STATE_RTS;
 case 129: return MLX4_QP_STATE_SQD;
 case 128: return MLX4_QP_STATE_SQER;
 case 134: return MLX4_QP_STATE_ERR;
 default: return -1;
 }
}
