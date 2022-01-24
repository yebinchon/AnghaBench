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
typedef  int /*<<< orphan*/ * ndptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

void
FUNC5(const char *argv[], int argc)
{
	ndptr p;

	argv[1] = NULL;
	p = FUNC4(argv[2]);
	if (p != NULL)
		FUNC0(argv+1, argc-1, FUNC3(p), FUNC1(p));
	else
		FUNC2(1, "unknown builtin %s.", argv[2]);
}