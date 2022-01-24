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
struct mlx4_buddy {int max_order; int* bits; int* num_free; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 void* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct mlx4_buddy *buddy, int max_order)
{
	int i, s;

	buddy->max_order = max_order;
	FUNC5(&buddy->lock);

	buddy->bits = FUNC1(buddy->max_order + 1, sizeof (long *),
			      GFP_KERNEL);
	buddy->num_free = FUNC1((buddy->max_order + 1), sizeof *buddy->num_free,
				  GFP_KERNEL);
	if (!buddy->bits || !buddy->num_free)
		goto err_out;

	for (i = 0; i <= buddy->max_order; ++i) {
		s = FUNC0(1 << (buddy->max_order - i));
		buddy->bits[i] = FUNC1(s, sizeof (long), GFP_KERNEL | __GFP_NOWARN);
		if (!buddy->bits[i]) {
			buddy->bits[i] = FUNC6(s * sizeof(long));
			if (!buddy->bits[i])
				goto err_out_free;
		}
	}

	FUNC4(0, buddy->bits[buddy->max_order]);
	buddy->num_free[buddy->max_order] = 1;

	return 0;

err_out_free:
	for (i = 0; i <= buddy->max_order; ++i)
		FUNC3(buddy->bits[i]);

err_out:
	FUNC2(buddy->bits);
	FUNC2(buddy->num_free);

	return -ENOMEM;
}