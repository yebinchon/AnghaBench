#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_12__ {int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  pool_bm; } ;
struct TYPE_11__ {struct mlx4_eq* eq; int /*<<< orphan*/ * irq_names; } ;
struct mlx4_priv {TYPE_6__ msix_ctl; TYPE_5__ eq_table; } ;
struct TYPE_8__ {int /*<<< orphan*/  ports; } ;
struct mlx4_eq {scalar_t__ ref_count; int have_irq; int /*<<< orphan*/  irq; TYPE_2__ actv_ports; } ;
struct TYPE_7__ {int num_comp_vectors; } ;
struct mlx4_dev {int flags; TYPE_4__* persist; TYPE_1__ caps; } ;
struct TYPE_10__ {TYPE_3__* pdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int) ; 
 int MLX4_EQ_ASYNC ; 
 int FUNC1 (int) ; 
 int MLX4_FLAG_MSI_X ; 
 int MLX4_IRQNAME_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_eq*,int) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx4_msi_x_interrupt ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx4_eq*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,int,char*) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ) ; 

int FUNC14(struct mlx4_dev *dev, u8 port, int *vector)
{
	struct mlx4_priv *priv = FUNC6(dev);
	int err = 0, i = 0;
	u32 min_ref_count_val = (u32)-1;
	int requested_vector = FUNC0(*vector);
	int *prequested_vector = NULL;


	FUNC8(&priv->msix_ctl.pool_lock);
	if (requested_vector < (dev->caps.num_comp_vectors + 1) &&
	    (requested_vector >= 0) &&
	    (requested_vector != MLX4_EQ_ASYNC)) {
		if (FUNC13(port - 1,
			     priv->eq_table.eq[requested_vector].actv_ports.ports)) {
			prequested_vector = &requested_vector;
		} else {
			struct mlx4_eq *eq;

			for (i = 1; i < port;
			     requested_vector += FUNC5(dev, i++))
				;

			eq = &priv->eq_table.eq[requested_vector];
			if (requested_vector < dev->caps.num_comp_vectors + 1 &&
			    FUNC13(port - 1, eq->actv_ports.ports)) {
				prequested_vector = &requested_vector;
			}
		}
	}

	if  (!prequested_vector) {
		requested_vector = -1;
		for (i = 0; min_ref_count_val && i < dev->caps.num_comp_vectors + 1;
		     i++) {
			struct mlx4_eq *eq = &priv->eq_table.eq[i];

			if (min_ref_count_val > eq->ref_count &&
			    FUNC13(port - 1, eq->actv_ports.ports)) {
				min_ref_count_val = eq->ref_count;
				requested_vector = i;
			}
		}

		if (requested_vector < 0) {
			err = -ENOSPC;
			goto err_unlock;
		}

		prequested_vector = &requested_vector;
	}

	if (!FUNC13(*prequested_vector, priv->msix_ctl.pool_bm) &&
	    dev->flags & MLX4_FLAG_MSI_X) {
		FUNC11(*prequested_vector, priv->msix_ctl.pool_bm);
		FUNC12(priv->eq_table.irq_names +
			 *prequested_vector * MLX4_IRQNAME_SIZE,
			 MLX4_IRQNAME_SIZE, "mlx4-%d@%s",
			 *prequested_vector, FUNC3(&dev->persist->pdev->dev));

		err = FUNC10(priv->eq_table.eq[*prequested_vector].irq,
				  mlx4_msi_x_interrupt, 0,
				  &priv->eq_table.irq_names[*prequested_vector << 5],
				  priv->eq_table.eq + *prequested_vector);

		if (err) {
			FUNC2(*prequested_vector, priv->msix_ctl.pool_bm);
			*prequested_vector = -1;
		} else {
			FUNC7(priv, *prequested_vector);
			FUNC4(&priv->eq_table.eq[*prequested_vector], 1);
			priv->eq_table.eq[*prequested_vector].have_irq = 1;
		}
	}

	if (!err && *prequested_vector >= 0)
		priv->eq_table.eq[*prequested_vector].ref_count++;

err_unlock:
	FUNC9(&priv->msix_ctl.pool_lock);

	if (!err && *prequested_vector >= 0)
		*vector = FUNC1(*prequested_vector);
	else
		*vector = 0;

	return err;
}