#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct servtab {int se_fd; scalar_t__ se_numchild; scalar_t__ se_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  allsock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct servtab*) ; 

__attribute__((used)) static void
FUNC3(struct servtab *sep)
{
	if (sep->se_fd >= 0) {
		if (FUNC0(sep->se_fd, &allsock))
			FUNC2(sep);
		(void) FUNC1(sep->se_fd);
		sep->se_fd = -1;
	}
	sep->se_count = 0;
	sep->se_numchild = 0;	/* forget about any existing children */
}