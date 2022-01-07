
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {int raw; } ;
typedef int u16 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_qp {int qp_num; int device; } ;


 int mlx5_core_detach_mcg (int ,union ib_gid*,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_mcg_detach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 struct mlx5_ib_dev *dev = to_mdev(ibqp->device);
 int err;

 err = mlx5_core_detach_mcg(dev->mdev, gid, ibqp->qp_num);
 if (err)
  mlx5_ib_warn(dev, "failed detaching QPN 0x%x, MGID %pI6\n",
        ibqp->qp_num, gid->raw);

 return err;
}
