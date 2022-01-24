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
struct source {int dummy; } ;
struct TYPE_2__ {size_t readsp; int readstack_sz; struct source* readstack; } ;

/* Variables and functions */
 int EOF ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 struct source* FUNC2 (struct source*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct source*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(char *p)
{
	int ch;

	if (bmachine.readsp > 0) {
		/* Check for tail call. Do not recurse in that case. */
		ch = FUNC1();
		if (ch == EOF) {
			FUNC3();
			FUNC4(&bmachine.readstack[bmachine.readsp], p);
			return;
		} else
			FUNC5();
	}
	if (bmachine.readsp == bmachine.readstack_sz - 1) {
		size_t newsz = bmachine.readstack_sz * 2;
		struct source *stack;
		stack = FUNC2(bmachine.readstack, newsz,
		    sizeof(struct source));
		if (stack == NULL)
			FUNC0(1, "recursion too deep");
		bmachine.readstack_sz = newsz;
		bmachine.readstack = stack;
	}
	FUNC4(&bmachine.readstack[++bmachine.readsp], p);
}