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
struct mlx5e_sq {int sqn; TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC5 (int) ; 
 void* modify_sq_in ; 
 int /*<<< orphan*/  sq_state ; 
 int /*<<< orphan*/  sqn ; 
 int /*<<< orphan*/  state ; 

int
FUNC6(struct mlx5e_sq *sq, int curr_state, int next_state)
{
	void *in;
	void *sqc;
	int inlen;
	int err;

	inlen = FUNC2(modify_sq_in);
	in = FUNC5(inlen);
	if (in == NULL)
		return (-ENOMEM);

	sqc = FUNC0(modify_sq_in, in, ctx);

	FUNC1(modify_sq_in, in, sqn, sq->sqn);
	FUNC1(modify_sq_in, in, sq_state, curr_state);
	FUNC1(sqc, sqc, state, next_state);

	err = FUNC4(sq->priv->mdev, in, inlen);

	FUNC3(in);

	return (err);
}