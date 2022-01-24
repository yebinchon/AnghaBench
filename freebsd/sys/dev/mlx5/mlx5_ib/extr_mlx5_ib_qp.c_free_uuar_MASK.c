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
struct mlx5_uuar_info {int num_uars; int num_low_latency_uuars; int /*<<< orphan*/  lock; int /*<<< orphan*/ * count; } ;

/* Variables and functions */
 int MLX5_BF_REGS_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_uuar_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_uuar_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mlx5_uuar_info *uuari, int uuarn)
{
	int nuuars = uuari->num_uars * MLX5_BF_REGS_PER_PAGE;
	int high_uuar = nuuars - uuari->num_low_latency_uuars;

	FUNC2(&uuari->lock);
	if (uuarn == 0) {
		--uuari->count[uuarn];
		goto out;
	}

	if (uuarn < high_uuar) {
		FUNC1(uuari, uuarn);
		goto out;
	}

	FUNC0(uuari, uuarn);

out:
	FUNC3(&uuari->lock);
}