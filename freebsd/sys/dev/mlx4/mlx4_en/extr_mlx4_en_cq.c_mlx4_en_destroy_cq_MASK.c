#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx4_en_priv {struct mlx4_en_dev* mdev; int /*<<< orphan*/  port; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct mlx4_en_cq {scalar_t__ is_tx; int /*<<< orphan*/ * buf; scalar_t__ buf_size; scalar_t__ vector; TYPE_1__ wqres; int /*<<< orphan*/  tq; int /*<<< orphan*/  cq_task; } ;

/* Variables and functions */
 scalar_t__ RX ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct mlx4_en_priv *priv, struct mlx4_en_cq **pcq)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_cq *cq = *pcq;

	FUNC5(cq->tq, &cq->cq_task);
	FUNC6(cq->tq);
	FUNC1(&cq->wqres.buf);
	FUNC2(mdev->dev, &cq->wqres, cq->buf_size);
	if (FUNC3(mdev->dev, priv->port, cq->vector) &&
	    cq->is_tx == RX)
		FUNC4(priv->mdev->dev, cq->vector);
	cq->vector = 0;
	cq->buf_size = 0;
	cq->buf = NULL;
	FUNC0(cq);
	*pcq = NULL;
}