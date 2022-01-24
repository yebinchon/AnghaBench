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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_sq {int /*<<< orphan*/  state; TYPE_2__ base; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  query_sq_out ; 
 int /*<<< orphan*/  sq_context ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static int FUNC6(struct mlx5_ib_dev *dev,
					struct mlx5_ib_sq *sq,
					u8 *sq_state)
{
	void *out;
	void *sqc;
	int inlen;
	int err;

	inlen = FUNC2(query_sq_out);
	out = FUNC5(inlen);
	if (!out)
		return -ENOMEM;

	err = FUNC4(dev->mdev, sq->base.mqp.qpn, out);
	if (err)
		goto out;

	sqc = FUNC0(query_sq_out, out, sq_context);
	*sq_state = FUNC1(sqc, sqc, state);
	sq->state = *sq_state;

out:
	FUNC3(out);
	return err;
}