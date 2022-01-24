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
typedef  char uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  portid ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static phandle_t
FUNC5(phandle_t node, uint32_t bspid, u_int cpu_impl)
{
	char type[sizeof("cpu")];
	phandle_t child;
	uint32_t portid;

	for (; node != 0; node = FUNC2(node)) {
		child = FUNC0(node);
		if (child > 0) {
			child = FUNC5(child, bspid, cpu_impl);
			if (child > 0)
				return (child);
		} else {
			if (FUNC1(node, "device_type", type,
			    sizeof(type)) <= 0)
				continue;
			if (FUNC4(type, "cpu") != 0)
				continue;
			if (FUNC1(node, FUNC3(cpu_impl),
			    &portid, sizeof(portid)) <= 0)
				continue;
			if (portid == bspid)
				return (node);
		}
	}
	return (0);
}