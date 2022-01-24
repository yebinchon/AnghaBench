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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  compat ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 int FUNC0 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC4(platform_t plat)
{
	char compat[255];
	ssize_t compatlen;
	char *curstr;
	phandle_t root;

	root = FUNC1(0);
	if (root == 0)
		return (ENXIO);

	compatlen = FUNC0(root, "compatible", compat, sizeof(compat));
	
	for (curstr = compat; curstr < compat + compatlen;
	    curstr += FUNC2(curstr) + 1) {
		if (FUNC3(curstr, "MacRISC", 7) == 0)
			return (BUS_PROBE_SPECIFIC);
	}

	return (ENXIO);
}