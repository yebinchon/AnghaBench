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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  pmcstat_skiplink ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

int
FUNC2(char *opt)
{

	if (FUNC1(opt, "skiplink=", 9) == 0) {
		pmcstat_skiplink = FUNC0(opt+9);
	} else
		return (0);

	return (1);
}