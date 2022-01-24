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
typedef  int u_long ;
typedef  scalar_t__ u_int ;
struct number {int dummy; } ;
struct TYPE_2__ {scalar_t__ obase; } ;

/* Variables and functions */
 int UINT_MAX ; 
 int ULONG_MAX ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC0 (struct number*) ; 
 int FUNC1 (struct number*) ; 
 struct number* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct number *n;
	u_long base;

	n = FUNC2();
	if (n != NULL) {
		base = FUNC1(n);
		if (base != ULONG_MAX && base > 1 && base <= UINT_MAX)
			bmachine.obase = (u_int)base;
		else
			FUNC3("output base must be a number greater than 1");
		FUNC0(n);
	}
}