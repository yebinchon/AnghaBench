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
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * arg; } ;
struct mlx5_ib_dev {TYPE_1__ congestion; int /*<<< orphan*/  mdev; } ;
typedef  enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 size_t MLX5_IB_CONG_PARAMS_NUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  congestion_parameters ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int FUNC6 (size_t) ; 
 int /*<<< orphan*/  query_cong_params_out ; 

__attribute__((used)) static int
FUNC7(struct mlx5_ib_dev *dev)
{
	int outlen = FUNC1(query_cong_params_out);
	enum mlx5_ib_cong_node_type node = 0;
	void *out;
	void *field;
	u32 x;
	int err = 0;

	out = FUNC3(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	/* get the current values */
	for (x = 0; x != MLX5_IB_CONG_PARAMS_NUM; x++) {
		if (node != FUNC6(x)) {
			node = FUNC6(x);

			err = FUNC4(dev->mdev, node, out, outlen);
			if (err)
				break;
		}
		field = FUNC0(query_cong_params_out, out, congestion_parameters);
		dev->congestion.arg[x] = FUNC5(field, x);
	}
	FUNC2(out);
	return err;
}