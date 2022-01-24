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
struct TYPE_2__ {char* grouping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ numeric ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(int n)
{
	char *s;

	if (numeric.grouping == NULL) {
		(void) FUNC0(&s, "%d", n);
	} else {
		(void) FUNC0(&s, "%s;%d", numeric.grouping, n);
	}
	if (s == NULL)
		FUNC1(stderr, "out of memory");

	FUNC2((char *)numeric.grouping);
	numeric.grouping = s;
}