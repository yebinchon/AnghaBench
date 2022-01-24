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
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,int,...) ; 
 int testnum ; 

__attribute__((used)) static void
FUNC1(const char *testname, const char *comment, int mode)
{

	testnum++;
	if (comment == NULL)
		FUNC0("not ok %d - %s # mode 0x%x\n", testnum, testname,
		    mode);
	else
		FUNC0("not ok %d - %s # mode 0x%x - %s\n", testnum, testname,
		    mode, comment);
}