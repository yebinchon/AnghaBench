
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_common {int from_state; int state; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;


 struct res_common* find_res (struct mlx4_dev*,int ,int) ;
 int mlx4_tlock (struct mlx4_dev*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void put_res(struct mlx4_dev *dev, int slave, u64 res_id,
      enum mlx4_resource type)
{
 struct res_common *r;

 spin_lock_irq(mlx4_tlock(dev));
 r = find_res(dev, res_id, type);
 if (r)
  r->state = r->from_state;
 spin_unlock_irq(mlx4_tlock(dev));
}
