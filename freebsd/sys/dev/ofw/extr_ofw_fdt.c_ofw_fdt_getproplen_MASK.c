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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ofw_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtp ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static ssize_t
FUNC6(ofw_t ofw, phandle_t package, const char *propname)
{
	const void *prop;
	int offset, len;

	offset = FUNC4(package);
	if (offset < 0)
		return (-1);

	len = -1;
	prop = FUNC1(fdtp, offset, propname, &len);

	if (prop == NULL && FUNC5(propname, "name") == 0) {
		/* Emulate the 'name' property */
		FUNC0(fdtp, offset, &len);
		return (len + 1);
	}

	if (prop == NULL && offset == FUNC3(fdtp, "/chosen")) {
		if (FUNC5(propname, "fdtbootcpu") == 0)
			return (sizeof(cell_t));
		if (FUNC5(propname, "fdtmemreserv") == 0)
			return (sizeof(uint64_t)*2*FUNC2(fdtp));
	}

	if (prop == NULL)
		return (-1);

	return (len);
}