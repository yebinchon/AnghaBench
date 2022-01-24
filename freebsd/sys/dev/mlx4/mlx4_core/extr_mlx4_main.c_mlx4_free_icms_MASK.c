#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  aux_icm; } ;
struct TYPE_13__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  qp_table; int /*<<< orphan*/  auxc_table; int /*<<< orphan*/  altc_table; int /*<<< orphan*/  rdmarc_table; } ;
struct TYPE_12__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  table; } ;
struct TYPE_11__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  table; } ;
struct TYPE_10__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  table; } ;
struct TYPE_9__ {int /*<<< orphan*/  mtt_table; int /*<<< orphan*/  dmpt_table; } ;
struct TYPE_8__ {int /*<<< orphan*/  table; } ;
struct mlx4_priv {TYPE_7__ fw; TYPE_6__ qp_table; TYPE_5__ srq_table; TYPE_4__ cq_table; TYPE_3__ eq_table; TYPE_2__ mr_table; TYPE_1__ mcg_table; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC3 (struct mlx4_dev*) ; 

__attribute__((used)) static void FUNC4(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC3(dev);

	FUNC1(dev, &priv->mcg_table.table);
	FUNC1(dev, &priv->srq_table.table);
	FUNC1(dev, &priv->cq_table.table);
	FUNC1(dev, &priv->qp_table.rdmarc_table);
	FUNC1(dev, &priv->qp_table.altc_table);
	FUNC1(dev, &priv->qp_table.auxc_table);
	FUNC1(dev, &priv->qp_table.qp_table);
	FUNC1(dev, &priv->mr_table.dmpt_table);
	FUNC1(dev, &priv->mr_table.mtt_table);
	FUNC1(dev, &priv->eq_table.table);
	FUNC1(dev, &priv->eq_table.cmpt_table);
	FUNC1(dev, &priv->cq_table.cmpt_table);
	FUNC1(dev, &priv->srq_table.cmpt_table);
	FUNC1(dev, &priv->qp_table.cmpt_table);

	FUNC0(dev);
	FUNC2(dev, priv->fw.aux_icm, 0);
}