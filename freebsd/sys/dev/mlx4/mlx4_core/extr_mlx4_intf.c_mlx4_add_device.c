
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_priv {int dev; int ctx_lock; int ctx_list; } ;
struct mlx4_interface {int (* activate ) (int *,scalar_t__) ;scalar_t__ (* add ) (int *) ;} ;
struct mlx4_device_context {scalar_t__ context; int list; struct mlx4_interface* intf; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int GFP_KERNEL ;
 int kfree (struct mlx4_device_context*) ;
 struct mlx4_device_context* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (int *) ;
 int stub2 (int *,scalar_t__) ;
 int vnet0 ;

__attribute__((used)) static void mlx4_add_device(struct mlx4_interface *intf, struct mlx4_priv *priv)
{
 struct mlx4_device_context *dev_ctx;

 dev_ctx = kmalloc(sizeof *dev_ctx, GFP_KERNEL);
 if (!dev_ctx)
  return;

 dev_ctx->intf = intf;
 dev_ctx->context = intf->add(&priv->dev);

 if (dev_ctx->context) {
  spin_lock_irq(&priv->ctx_lock);
  list_add_tail(&dev_ctx->list, &priv->ctx_list);
  spin_unlock_irq(&priv->ctx_lock);
  if (intf->activate) {
   CURVNET_SET_QUIET(vnet0);
   intf->activate(&priv->dev, dev_ctx->context);
   CURVNET_RESTORE();
  }
 } else
  kfree(dev_ctx);
}
