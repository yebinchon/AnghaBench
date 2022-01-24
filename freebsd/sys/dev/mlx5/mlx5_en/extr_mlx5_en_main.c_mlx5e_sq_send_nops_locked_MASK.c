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
struct TYPE_2__ {scalar_t__ d64; int /*<<< orphan*/  d32; } ;
struct mlx5e_sq {scalar_t__ cev_counter; TYPE_1__ doorbell; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_sq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_sq*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_sq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct mlx5e_sq *sq, int can_sleep)
{
	/* fill up remainder with NOPs */
	while (sq->cev_counter != 0) {
		while (!FUNC3(sq, 1)) {
			if (can_sleep != 0) {
				FUNC7(&sq->lock);
				FUNC5(4);
				FUNC6(&sq->lock);
			} else {
				goto done;
			}
		}
		/* send a single NOP */
		FUNC2(sq, 1);
		FUNC0();
	}
done:
	/* Check if we need to write the doorbell */
	if (FUNC1(sq->doorbell.d64 != 0)) {
		FUNC4(sq, sq->doorbell.d32, 0);
		sq->doorbell.d64 = 0;
	}
}