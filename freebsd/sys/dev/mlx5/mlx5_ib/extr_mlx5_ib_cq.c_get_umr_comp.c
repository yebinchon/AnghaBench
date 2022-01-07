
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_wq {int* wr_data; } ;
typedef enum ib_wc_opcode { ____Placeholder_ib_wc_opcode } ib_wc_opcode ;


 int IB_WC_LOCAL_INV ;
 int IB_WC_REG_MR ;



 int pr_warn (char*) ;

__attribute__((used)) static enum ib_wc_opcode get_umr_comp(struct mlx5_ib_wq *wq, int idx)
{
 switch (wq->wr_data[idx]) {
 case 128:
  return 0;

 case 130:
  return IB_WC_LOCAL_INV;

 case 129:
  return IB_WC_REG_MR;

 default:
  pr_warn("unknown completion status\n");
  return 0;
 }
}
