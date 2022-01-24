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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (char const*) ; 

void
FUNC2(const char *fn, int print_nl)
{

	if (print_nl)
		FUNC0("\n", 1);
	FUNC0("==> ", 4);
	FUNC0(fn, FUNC1(fn));
	FUNC0(" <==\n", 5);
}