
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_qp {int qpn; } ;
struct mlx5_core_dev {int dummy; } ;
struct mbox_info {int outlen; int out; int inlen; int in; } ;


 int mbox_free (struct mbox_info*) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int ,int ,int ,int ) ;
 int modify_qp_mbox_alloc (struct mlx5_core_dev*,int ,int ,int ,void*,struct mbox_info*) ;

int mlx5_core_qp_modify(struct mlx5_core_dev *dev, u16 opcode,
   u32 opt_param_mask, void *qpc,
   struct mlx5_core_qp *qp)
{
 struct mbox_info mbox;
 int err;

 err = modify_qp_mbox_alloc(dev, opcode, qp->qpn,
       opt_param_mask, qpc, &mbox);
 if (err)
  return err;

 err = mlx5_cmd_exec(dev, mbox.in, mbox.inlen, mbox.out, mbox.outlen);
 mbox_free(&mbox);
 return err;
}
