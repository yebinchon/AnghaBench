#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx4_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx_list; } ;
struct mlx4_interface {int /*<<< orphan*/  (* activate ) (int /*<<< orphan*/ *,scalar_t__) ;scalar_t__ (* add ) (int /*<<< orphan*/ *) ;} ;
struct mlx4_device_context {scalar_t__ context; int /*<<< orphan*/  list; struct mlx4_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_device_context*) ; 
 struct mlx4_device_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  vnet0 ; 

__attribute__((used)) static void FUNC9(struct mlx4_interface *intf, struct mlx4_priv *priv)
{
	struct mlx4_device_context *dev_ctx;

	dev_ctx = FUNC3(sizeof *dev_ctx, GFP_KERNEL);
	if (!dev_ctx)
		return;

	dev_ctx->intf    = intf;
	dev_ctx->context = intf->add(&priv->dev);

	if (dev_ctx->context) {
		FUNC5(&priv->ctx_lock);
		FUNC4(&dev_ctx->list, &priv->ctx_list);
		FUNC6(&priv->ctx_lock);
		if (intf->activate) {
			FUNC1(vnet0);
			intf->activate(&priv->dev, dev_ctx->context);
			FUNC0();
		}
	} else
		FUNC2(dev_ctx);
}