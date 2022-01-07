
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int ver; int lock; int * count; } ;
typedef enum mlx5_ib_latency_class { ____Placeholder_mlx5_ib_latency_class } mlx5_ib_latency_class ;


 int EINVAL ;
 int ENOMEM ;




 int alloc_high_class_uuar (struct mlx5_uuar_info*) ;
 int alloc_med_class_uuar (struct mlx5_uuar_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alloc_uuar(struct mlx5_uuar_info *uuari,
        enum mlx5_ib_latency_class lat)
{
 int uuarn = -EINVAL;

 mutex_lock(&uuari->lock);
 switch (lat) {
 case 129:
  uuarn = 0;
  uuari->count[uuarn]++;
  break;

 case 128:
  if (uuari->ver < 2)
   uuarn = -ENOMEM;
  else
   uuarn = alloc_med_class_uuar(uuari);
  break;

 case 130:
  if (uuari->ver < 2)
   uuarn = -ENOMEM;
  else
   uuarn = alloc_high_class_uuar(uuari);
  break;

 case 131:
  uuarn = 2;
  break;
 }
 mutex_unlock(&uuari->lock);

 return uuarn;
}
