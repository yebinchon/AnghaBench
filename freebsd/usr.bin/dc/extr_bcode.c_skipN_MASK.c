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
struct number {int dummy; } ;
struct TYPE_2__ {scalar_t__ readsp; } ;

/* Variables and functions */
 scalar_t__ ULONG_MAX ; 
 TYPE_1__ bmachine ; 
 scalar_t__ FUNC0 (struct number*) ; 
 struct number* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct number *n;
	u_long i;

	n = FUNC1();
	if (n == NULL)
		return;
	i = FUNC0(n);
	if (i == ULONG_MAX)
		FUNC4("J command requires a number >= 0");
	else if (i > 0 && bmachine.readsp < i)
		FUNC4("J command argument exceeded string execution depth");
	else {
		while (i-- > 0) {
			FUNC3();
			bmachine.readsp--;
		}
		FUNC2();
	}
}