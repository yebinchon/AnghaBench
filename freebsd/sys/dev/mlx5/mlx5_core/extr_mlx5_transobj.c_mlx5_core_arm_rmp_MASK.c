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
typedef  int u32 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,void*) ; 
 int MLX5_RMPC_STATE_RDY ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* modify_rmp_in ; 
 void* rmp_bitmask ; 
 int rmp_state ; 
 int state ; 

int FUNC6(struct mlx5_core_dev *dev, u32 rmpn, u16 lwm)
{
	void *in;
	void *rmpc;
	void *wq;
	void *bitmask;
	int  err;

	in = FUNC5(FUNC2(modify_rmp_in));
	if (!in)
		return -ENOMEM;

	rmpc    = FUNC0(modify_rmp_in,   in,   ctx);
	bitmask = FUNC0(modify_rmp_in,   in,   bitmask);
	wq      = FUNC0(rmpc,	        rmpc, wq);

	FUNC1(modify_rmp_in, in,	 rmp_state, MLX5_RMPC_STATE_RDY);
	FUNC1(modify_rmp_in, in,	 rmpn,      rmpn);
	FUNC1(wq,		wq,	 lwm,	    lwm);
	FUNC1(rmp_bitmask,	bitmask, lwm,	    1);
	FUNC1(rmpc,		rmpc,	 state,	    MLX5_RMPC_STATE_RDY);

	err =  FUNC4(dev, in, FUNC2(modify_rmp_in));

	FUNC3(in);

	return err;
}