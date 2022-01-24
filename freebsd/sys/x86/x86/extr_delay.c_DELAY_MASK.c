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
struct TYPE_2__ {int /*<<< orphan*/  (* early_delay ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__ init_ops ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(int n)
{

	FUNC0();
	if (FUNC2(n)) {
		FUNC1();
		return;
	}

	init_ops.early_delay(n);
	FUNC1();
}