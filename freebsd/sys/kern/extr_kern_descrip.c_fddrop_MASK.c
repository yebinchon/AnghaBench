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
struct filedesc {int fd_holdcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  filedesc0_zone ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct filedesc*) ; 

__attribute__((used)) static void
FUNC3(struct filedesc *fdp)
{

	if (fdp->fd_holdcnt > 1) {
		if (FUNC1(&fdp->fd_holdcnt) == 0)
			return;
	}

	FUNC0(fdp);
	FUNC2(filedesc0_zone, fdp);
}