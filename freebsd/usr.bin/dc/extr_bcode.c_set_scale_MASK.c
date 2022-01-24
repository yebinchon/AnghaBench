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
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;
struct number {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {scalar_t__ scale; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ ULONG_MAX ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC1 (struct number*) ; 
 scalar_t__ FUNC2 (struct number*) ; 
 struct number* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct number *n;
	u_long scale;

	n = FUNC3();
	if (n != NULL) {
		if (FUNC0(n->number))
			FUNC4("scale must be a nonnegative number");
		else {
			scale = FUNC2(n);
			if (scale != ULONG_MAX && scale <= UINT_MAX)
				bmachine.scale = (u_int)scale;
			else
				FUNC4("scale too large");
			}
		FUNC1(n);
	}
}