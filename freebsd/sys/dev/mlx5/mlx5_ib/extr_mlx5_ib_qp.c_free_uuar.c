
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int num_uars; int num_low_latency_uuars; int lock; int * count; } ;


 int MLX5_BF_REGS_PER_PAGE ;
 int free_high_class_uuar (struct mlx5_uuar_info*,int) ;
 int free_med_class_uuar (struct mlx5_uuar_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void free_uuar(struct mlx5_uuar_info *uuari, int uuarn)
{
 int nuuars = uuari->num_uars * MLX5_BF_REGS_PER_PAGE;
 int high_uuar = nuuars - uuari->num_low_latency_uuars;

 mutex_lock(&uuari->lock);
 if (uuarn == 0) {
  --uuari->count[uuarn];
  goto out;
 }

 if (uuarn < high_uuar) {
  free_med_class_uuar(uuari, uuarn);
  goto out;
 }

 free_high_class_uuar(uuari, uuarn);

out:
 mutex_unlock(&uuari->lock);
}
