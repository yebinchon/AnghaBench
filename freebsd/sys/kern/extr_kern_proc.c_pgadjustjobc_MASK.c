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
struct pgrp {scalar_t__ pg_jobc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*) ; 

__attribute__((used)) static void
FUNC3(struct pgrp *pgrp, int entering)
{

	FUNC0(pgrp);
	if (entering)
		pgrp->pg_jobc++;
	else {
		--pgrp->pg_jobc;
		if (pgrp->pg_jobc == 0)
			FUNC2(pgrp);
	}
	FUNC1(pgrp);
}