
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_common {scalar_t__ state; int owner; scalar_t__ from_state; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;


 int EBUSY ;
 int ENONET ;
 int EPERM ;
 scalar_t__ RES_ANY_BUSY ;
 struct res_common* find_res (struct mlx4_dev*,int ,int) ;
 int mlx4_tlock (struct mlx4_dev*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int get_res(struct mlx4_dev *dev, int slave, u64 res_id,
     enum mlx4_resource type,
     void *res)
{
 struct res_common *r;
 int err = 0;

 spin_lock_irq(mlx4_tlock(dev));
 r = find_res(dev, res_id, type);
 if (!r) {
  err = -ENONET;
  goto exit;
 }

 if (r->state == RES_ANY_BUSY) {
  err = -EBUSY;
  goto exit;
 }

 if (r->owner != slave) {
  err = -EPERM;
  goto exit;
 }

 r->from_state = r->state;
 r->state = RES_ANY_BUSY;

 if (res)
  *((struct res_common **)res) = r;

exit:
 spin_unlock_irq(mlx4_tlock(dev));
 return err;
}
