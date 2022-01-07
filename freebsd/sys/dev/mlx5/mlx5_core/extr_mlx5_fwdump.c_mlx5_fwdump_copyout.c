
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_fwdump_reg {int val; scalar_t__ addr; } ;
struct mlx5_fwdump_get {int reg_filled; int reg_cnt; struct mlx5_fwdump_reg* buf; } ;
struct mlx5_crspace_regmap {scalar_t__ cnt; scalar_t__ addr; } ;
struct mlx5_core_dev {int dump_size; int dump_copyout; int dump_lock; int * dump_data; struct mlx5_crspace_regmap* dump_rege; int dump_valid; } ;
typedef int rv ;


 int ENOENT ;
 int copyout (struct mlx5_fwdump_reg*,struct mlx5_fwdump_reg*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int*) ;

__attribute__((used)) static int
mlx5_fwdump_copyout(struct mlx5_core_dev *mdev, struct mlx5_fwdump_get *fwg)
{
 const struct mlx5_crspace_regmap *r;
 struct mlx5_fwdump_reg rv, *urv;
 uint32_t i, ri;
 int error;

 mtx_lock(&mdev->dump_lock);
 if (mdev->dump_data == ((void*)0)) {
  mtx_unlock(&mdev->dump_lock);
  return (ENOENT);
 }
 if (fwg->buf == ((void*)0)) {
  fwg->reg_filled = mdev->dump_size;
  mtx_unlock(&mdev->dump_lock);
  return (0);
 }
 if (!mdev->dump_valid) {
  mtx_unlock(&mdev->dump_lock);
  return (ENOENT);
 }
 mdev->dump_copyout = 1;
 mtx_unlock(&mdev->dump_lock);

 urv = fwg->buf;
 for (i = 0, r = mdev->dump_rege; r->cnt != 0; r++) {
  for (ri = 0; ri < r->cnt; ri++) {
   if (i >= fwg->reg_cnt)
    goto out;
   rv.addr = r->addr + ri * 4;
   rv.val = mdev->dump_data[i];
   error = copyout(&rv, urv, sizeof(rv));
   if (error != 0)
    return (error);
   urv++;
   i++;
  }
 }
out:
 fwg->reg_filled = i;
 mtx_lock(&mdev->dump_lock);
 mdev->dump_copyout = 0;
 wakeup(&mdev->dump_copyout);
 mtx_unlock(&mdev->dump_lock);
 return (0);
}
