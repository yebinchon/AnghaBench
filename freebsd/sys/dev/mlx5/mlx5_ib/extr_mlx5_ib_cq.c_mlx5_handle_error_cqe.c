
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_err_cqe {int syndrome; int vendor_err_synd; } ;
struct ib_wc {int vendor_err; int status; } ;


 int IB_WC_BAD_RESP_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_REM_ABORT_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_REM_OP_ERR ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
 int dump_cqe (struct mlx5_ib_dev*,struct mlx5_err_cqe*) ;

__attribute__((used)) static void mlx5_handle_error_cqe(struct mlx5_ib_dev *dev,
      struct mlx5_err_cqe *cqe,
      struct ib_wc *wc)
{
 int dump = 1;

 switch (cqe->syndrome) {
 case 138:
  wc->status = IB_WC_LOC_LEN_ERR;
  break;
 case 136:
  wc->status = IB_WC_LOC_QP_OP_ERR;
  break;
 case 137:
  wc->status = IB_WC_LOC_PROT_ERR;
  break;
 case 128:
  dump = 0;
  wc->status = IB_WC_WR_FLUSH_ERR;
  break;
 case 135:
  wc->status = IB_WC_MW_BIND_ERR;
  break;
 case 140:
  wc->status = IB_WC_BAD_RESP_ERR;
  break;
 case 139:
  wc->status = IB_WC_LOC_ACCESS_ERR;
  break;
 case 132:
  wc->status = IB_WC_REM_INV_REQ_ERR;
  break;
 case 133:
  wc->status = IB_WC_REM_ACCESS_ERR;
  break;
 case 131:
  wc->status = IB_WC_REM_OP_ERR;
  break;
 case 129:
  wc->status = IB_WC_RETRY_EXC_ERR;
  dump = 0;
  break;
 case 130:
  wc->status = IB_WC_RNR_RETRY_EXC_ERR;
  dump = 0;
  break;
 case 134:
  wc->status = IB_WC_REM_ABORT_ERR;
  break;
 default:
  wc->status = IB_WC_GENERAL_ERR;
  break;
 }

 wc->vendor_err = cqe->vendor_err_synd;
 if (dump)
  dump_cqe(dev, cqe);
}
