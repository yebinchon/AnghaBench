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
struct number {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int /*<<< orphan*/  obase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct number* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct number*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct number *n;

	n = FUNC2();
	FUNC1(FUNC0(n->number, bmachine.obase));
	FUNC3(n);
}