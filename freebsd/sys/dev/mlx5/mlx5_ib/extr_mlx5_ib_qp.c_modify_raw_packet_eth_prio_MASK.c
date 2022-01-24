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
typedef  int u8 ;
struct mlx5_ib_sq {int /*<<< orphan*/  tisn; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 TYPE_1__ bitmask ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC5 (int) ; 
 void* modify_tis_in ; 
 int /*<<< orphan*/  prio ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *dev,
				      struct mlx5_ib_sq *sq, u8 sl)
{
	void *in;
	void *tisc;
	int inlen;
	int err;

	inlen = FUNC2(modify_tis_in);
	in = FUNC5(inlen);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_tis_in, in, bitmask.prio, 1);

	tisc = FUNC0(modify_tis_in, in, ctx);
	FUNC1(tisc, tisc, prio, ((sl & 0x7) << 1));

	err = FUNC4(dev, sq->tisn, in, inlen);

	FUNC3(in);

	return err;
}