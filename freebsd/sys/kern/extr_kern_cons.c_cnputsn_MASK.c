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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  cnputs_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ use_cnputs_mtx ; 

void
FUNC4(const char *p, size_t n)
{
	size_t i;
	int unlock_reqd = 0;

	if (use_cnputs_mtx) {
	  	/*
		 * NOTE: Debug prints and/or witness printouts in
		 * console driver clients can cause the "cnputs_mtx"
		 * mutex to recurse. Simply return if that happens.
		 */
		if (FUNC2(&cnputs_mtx))
			return;
		FUNC1(&cnputs_mtx);
		unlock_reqd = 1;
	}

	for (i = 0; i < n; i++)
		FUNC0(p[i]);

	if (unlock_reqd)
		FUNC3(&cnputs_mtx);
}