#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_rq {int /*<<< orphan*/  tirn; TYPE_2__ base; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_TIRC_DISP_TYPE_DIRECT ; 
 int /*<<< orphan*/  create_tir_in ; 
 int /*<<< orphan*/  disp_type ; 
 int /*<<< orphan*/  inline_rqn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  tir_context ; 
 int /*<<< orphan*/  transport_domain ; 

__attribute__((used)) static int FUNC6(struct mlx5_ib_dev *dev,
				    struct mlx5_ib_rq *rq, u32 tdn)
{
	u32 *in;
	void *tirc;
	int inlen;
	int err;

	inlen = FUNC2(create_tir_in);
	in = FUNC5(inlen);
	if (!in)
		return -ENOMEM;

	tirc = FUNC0(create_tir_in, in, tir_context);
	FUNC1(tirc, tirc, disp_type, MLX5_TIRC_DISP_TYPE_DIRECT);
	FUNC1(tirc, tirc, inline_rqn, rq->base.mqp.qpn);
	FUNC1(tirc, tirc, transport_domain, tdn);

	err = FUNC4(dev->mdev, in, inlen, &rq->tirn);

	FUNC3(in);

	return err;
}