
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int owner; scalar_t__ state; int from_state; int to_state; } ;
struct res_srq {TYPE_3__ com; int ref_count; } ;
struct mlx4_resource_tracker {int * res_tree; } ;
struct TYPE_4__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_5__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef enum res_srq_states { ____Placeholder_res_srq_states } res_srq_states ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 size_t RES_SRQ ;
 int RES_SRQ_ALLOCATED ;
 int RES_SRQ_BUSY ;
 scalar_t__ RES_SRQ_HW ;
 scalar_t__ atomic_read (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_tlock (struct mlx4_dev*) ;
 struct res_srq* res_tracker_lookup (int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int srq_res_start_move_to(struct mlx4_dev *dev, int slave, int index,
     enum res_srq_states state, struct res_srq **srq)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
 struct res_srq *r;
 int err = 0;

 spin_lock_irq(mlx4_tlock(dev));
 r = res_tracker_lookup(&tracker->res_tree[RES_SRQ], index);
 if (!r) {
  err = -ENOENT;
 } else if (r->com.owner != slave) {
  err = -EPERM;
 } else if (state == RES_SRQ_ALLOCATED) {
  if (r->com.state != RES_SRQ_HW)
   err = -EINVAL;
  else if (atomic_read(&r->ref_count))
   err = -EBUSY;
 } else if (state != RES_SRQ_HW || r->com.state != RES_SRQ_ALLOCATED) {
  err = -EINVAL;
 }

 if (!err) {
  r->com.from_state = r->com.state;
  r->com.to_state = state;
  r->com.state = RES_SRQ_BUSY;
  if (srq)
   *srq = r;
 }

 spin_unlock_irq(mlx4_tlock(dev));

 return err;
}
