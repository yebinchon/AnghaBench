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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  boothowto ; 

int
FUNC3(void)
{
	phandle_t chosen;
	char buf[2048];		/* early stack supposedly big enough */
	int err;

	chosen = FUNC0("/chosen");
	if (chosen == -1)
		return (chosen);

	if ((err = FUNC1(chosen, "bootargs", buf, sizeof(buf))) != -1) {
		boothowto |= FUNC2(buf);
		return (0);
	}

	return (err);
}