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
struct attr_check {int dummy; } ;
struct TYPE_2__ {int nr; struct attr_check** checks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ check_vector ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct attr_check *check)
{
	int i;

	FUNC1();

	/* Find entry */
	for (i = 0; i < check_vector.nr; i++)
		if (check_vector.checks[i] == check)
			break;

	if (i >= check_vector.nr)
		FUNC0("no entry found");

	/* shift entries over */
	for (; i < check_vector.nr - 1; i++)
		check_vector.checks[i] = check_vector.checks[i + 1];

	check_vector.nr--;

	FUNC2();
}