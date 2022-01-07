
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int EINVAL ;
 int MLX5_QP_ST_QP0 ;
 int MLX5_QP_ST_QP1 ;
 int MLX5_QP_ST_RAW_ETHERTYPE ;
 int MLX5_QP_ST_RAW_IPV6 ;
 int MLX5_QP_ST_RC ;
 int MLX5_QP_ST_REG_UMR ;
 int MLX5_QP_ST_UC ;
 int MLX5_QP_ST_UD ;
 int MLX5_QP_ST_XRC ;

__attribute__((used)) static int to_mlx5_st(enum ib_qp_type type)
{
 switch (type) {
 case 135: return MLX5_QP_ST_RC;
 case 133: return MLX5_QP_ST_UC;
 case 132: return MLX5_QP_ST_UD;
 case 128: return MLX5_QP_ST_REG_UMR;
 case 131:
 case 130: return MLX5_QP_ST_XRC;
 case 134: return MLX5_QP_ST_QP0;
 case 129: return MLX5_QP_ST_QP1;
 case 137: return MLX5_QP_ST_RAW_IPV6;
 case 136:
 case 138: return MLX5_QP_ST_RAW_ETHERTYPE;
 case 139:
 default: return -EINVAL;
 }
}
