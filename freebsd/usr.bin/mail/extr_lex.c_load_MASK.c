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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * input ; 
 int loading ; 
 int sourcing ; 

void
FUNC3(char *name)
{
	FILE *in, *oldin;

	if ((in = FUNC1(name, "r")) == NULL)
		return;
	oldin = input;
	input = in;
	loading = 1;
	sourcing = 1;
	FUNC2();
	loading = 0;
	sourcing = 0;
	input = oldin;
	(void)FUNC0(in);
}