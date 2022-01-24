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
struct mlx5_srq_attr {int /*<<< orphan*/  pas; int /*<<< orphan*/  user_index; } ;
struct mlx5_core_srq {int /*<<< orphan*/  srqn; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_xrc_srq_in ; 
 int FUNC3 (struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  user_index ; 
 void* xrc_srq_context_entry ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev,
			      struct mlx5_core_srq *srq,
			      struct mlx5_srq_attr *in)
{
	void *create_in;
	void *xrc_srqc;
	void *pas;
	int pas_size;
	int inlen;
	int err;

	pas_size  = FUNC3(in);
	inlen	  = FUNC2(create_xrc_srq_in) + pas_size;
	create_in = FUNC7(inlen);
	if (!create_in)
		return -ENOMEM;

	xrc_srqc = FUNC0(create_xrc_srq_in, create_in, xrc_srq_context_entry);
	pas	 = FUNC0(create_xrc_srq_in, create_in, pas);

	FUNC8(xrc_srqc, in);
	FUNC1(xrc_srqc, xrc_srqc, user_index, in->user_index);
	FUNC5(pas, in->pas, pas_size);

	err = FUNC6(dev, create_in, inlen, &srq->srqn);
	if (err)
		goto out;

out:
	FUNC4(create_in);
	return err;
}