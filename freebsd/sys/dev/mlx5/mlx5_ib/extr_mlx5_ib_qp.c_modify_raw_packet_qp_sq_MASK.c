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
struct TYPE_3__ {int qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_sq {int state; TYPE_2__ base; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC5 (int) ; 
 void* modify_sq_in ; 
 int /*<<< orphan*/  sq_state ; 
 int /*<<< orphan*/  sqn ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *dev,
				   struct mlx5_ib_sq *sq, int new_state)
{
	void *in;
	void *sqc;
	int inlen;
	int err;

	inlen = FUNC2(modify_sq_in);
	in = FUNC5(inlen);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_sq_in, in, sqn, sq->base.mqp.qpn);
	FUNC1(modify_sq_in, in, sq_state, sq->state);

	sqc = FUNC0(modify_sq_in, in, ctx);
	FUNC1(sqc, sqc, state, new_state);

	err = FUNC4(dev, in, inlen);
	if (err)
		goto out;

	sq->state = new_state;

out:
	FUNC3(in);
	return err;
}