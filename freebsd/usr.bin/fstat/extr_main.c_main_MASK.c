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
 char* FUNC0 (char*) ; 
 int FUNC1 (int,char**) ; 
 int FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(int argc, char *argv[])
{
	char *p;

	p = FUNC0(argv[0]);
	if (p == NULL)
		FUNC3(1, "basename(%s)", argv[0]);
	if (!FUNC4(p, "fuser"))
		return (FUNC2(argc, argv));
	else
		return (FUNC1(argc, argv));
}