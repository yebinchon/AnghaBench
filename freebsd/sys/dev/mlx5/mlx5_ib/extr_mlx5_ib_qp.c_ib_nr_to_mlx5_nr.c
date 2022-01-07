
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_QP_OPTPAR_ACK_TIMEOUT ;
 int MLX5_QP_OPTPAR_ALT_ADDR_PATH ;
 int MLX5_QP_OPTPAR_PKEY_INDEX ;
 int MLX5_QP_OPTPAR_PM_STATE ;
 int MLX5_QP_OPTPAR_PRIMARY_ADDR_PATH ;
 int MLX5_QP_OPTPAR_PRI_PORT ;
 int MLX5_QP_OPTPAR_Q_KEY ;
 int MLX5_QP_OPTPAR_RAE ;
 int MLX5_QP_OPTPAR_RETRY_COUNT ;
 int MLX5_QP_OPTPAR_RNR_RETRY ;
 int MLX5_QP_OPTPAR_RNR_TIMEOUT ;
 int MLX5_QP_OPTPAR_RRA_MAX ;
 int MLX5_QP_OPTPAR_RRE ;
 int MLX5_QP_OPTPAR_RWE ;
 int MLX5_QP_OPTPAR_SRA_MAX ;

__attribute__((used)) static int ib_nr_to_mlx5_nr(int ib_mask)
{
 switch (ib_mask) {
 case 129:
  return 0;
 case 144:
  return 0;
 case 142:
  return 0;
 case 148:
  return MLX5_QP_OPTPAR_RWE | MLX5_QP_OPTPAR_RRE |
   MLX5_QP_OPTPAR_RAE;
 case 136:
  return MLX5_QP_OPTPAR_PKEY_INDEX;
 case 135:
  return MLX5_QP_OPTPAR_PRI_PORT;
 case 134:
  return MLX5_QP_OPTPAR_Q_KEY;
 case 146:
  return MLX5_QP_OPTPAR_PRIMARY_ADDR_PATH |
   MLX5_QP_OPTPAR_PRI_PORT;
 case 137:
  return 0;
 case 128:
  return MLX5_QP_OPTPAR_ACK_TIMEOUT;
 case 133:
  return MLX5_QP_OPTPAR_RETRY_COUNT;
 case 132:
  return MLX5_QP_OPTPAR_RNR_RETRY;
 case 131:
  return 0;
 case 140:
  return MLX5_QP_OPTPAR_SRA_MAX;
 case 147:
  return MLX5_QP_OPTPAR_ALT_ADDR_PATH;
 case 139:
  return MLX5_QP_OPTPAR_RNR_TIMEOUT;
 case 130:
  return 0;
 case 141:
  return MLX5_QP_OPTPAR_RRA_MAX | MLX5_QP_OPTPAR_RWE |
   MLX5_QP_OPTPAR_RRE | MLX5_QP_OPTPAR_RAE;
 case 138:
  return MLX5_QP_OPTPAR_PM_STATE;
 case 145:
  return 0;
 case 143:
  return 0;
 }
 return 0;
}
