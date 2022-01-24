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

/* Variables and functions */
 int NUM_WT ; 
 scalar_t__ T_CHAR ; 
 int /*<<< orphan*/  T_ELLIPSIS ; 
 int /*<<< orphan*/ * ellipsis_weights ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ lastorder ; 
 int /*<<< orphan*/ * order_weights ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void)
{
	int	i;

	FUNC1(T_ELLIPSIS);

	if (lastorder != T_CHAR) {
		FUNC0(stderr, "illegal starting point for range");
		return;
	}

	for (i = 0; i < NUM_WT; i++) {
		ellipsis_weights[i] = order_weights[i];
	}
}