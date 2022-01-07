
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int num_uars; struct mlx5_ib_ucontext* uars; struct mlx5_ib_ucontext* bitmap; struct mlx5_ib_ucontext* count; } ;
struct mlx5_ib_ucontext {int index; int tdn; struct mlx5_uuar_info uuari; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_ucontext {int device; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int kfree (struct mlx5_ib_ucontext*) ;
 int log_max_transport_domain ;
 scalar_t__ mlx5_cmd_free_uar (int ,int ) ;
 int mlx5_dealloc_transport_domain (int ,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_ucontext* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static int mlx5_ib_dealloc_ucontext(struct ib_ucontext *ibcontext)
{
 struct mlx5_ib_ucontext *context = to_mucontext(ibcontext);
 struct mlx5_ib_dev *dev = to_mdev(ibcontext->device);
 struct mlx5_uuar_info *uuari = &context->uuari;
 int i;

 if (MLX5_CAP_GEN(dev->mdev, log_max_transport_domain))
  mlx5_dealloc_transport_domain(dev->mdev, context->tdn);

 for (i = 0; i < uuari->num_uars; i++) {
  if (mlx5_cmd_free_uar(dev->mdev, uuari->uars[i].index))
   mlx5_ib_warn(dev, "failed to free UAR 0x%x\n", uuari->uars[i].index);
 }

 kfree(uuari->count);
 kfree(uuari->bitmap);
 kfree(uuari->uars);
 kfree(context);

 return 0;
}
