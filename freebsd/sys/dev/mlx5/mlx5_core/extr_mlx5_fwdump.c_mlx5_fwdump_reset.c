
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dump_valid; int dump_lock; scalar_t__ dump_copyout; int * dump_data; } ;


 int ENOENT ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mlx5_fwdump_reset(struct mlx5_core_dev *mdev)
{
 int error;

 error = 0;
 mtx_lock(&mdev->dump_lock);
 if (mdev->dump_data != ((void*)0)) {
  while (mdev->dump_copyout) {
   msleep(&mdev->dump_copyout, &mdev->dump_lock,
       0, "mlx5fwr", 0);
  }
  mdev->dump_valid = 0;
 } else {
  error = ENOENT;
 }
 mtx_unlock(&mdev->dump_lock);
 return (error);
}
