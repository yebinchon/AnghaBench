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
struct pgrp {int dummy; } ;
typedef  int /*<<< orphan*/  ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 struct pgrp* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(int pgid, int sig, ksiginfo_t *ksi)
{
	struct pgrp *pgrp;

	if (pgid != 0) {
		FUNC3(&proctree_lock);
		pgrp = FUNC1(pgid);
		FUNC4(&proctree_lock);
		if (pgrp != NULL) {
			FUNC2(pgrp, sig, 0, ksi);
			FUNC0(pgrp);
		}
	}
}