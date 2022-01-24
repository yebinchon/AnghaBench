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
struct number {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 TYPE_1__ bmachine ; 
 struct number* FUNC0 (struct number*,struct number*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct number*) ; 
 struct number* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct number*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct number *a, *b, *r;

	a = FUNC2();
	if (a == NULL)
		return;
	b = FUNC2();
	if (b == NULL) {
		FUNC3(a);
		return;
	}

	r = FUNC0(b, a, bmachine.scale);

	FUNC3(r);
	FUNC1(a);
	FUNC1(b);
}