#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct progress {int dummy; } ;
struct TYPE_3__ {scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct progress*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ pending ; 
 scalar_t__ show_progress ; 
 struct progress* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct progress**) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct progress *progress = NULL;
	unsigned int nr = 0;
	int result = 0;
	if (show_progress)
		progress = FUNC3(FUNC0("Checking connectivity"), 0);
	while (pending.nr) {
		result |= FUNC5(FUNC2(&pending));
		FUNC1(progress, ++nr);
	}
	FUNC4(&progress);
	return !!result;
}