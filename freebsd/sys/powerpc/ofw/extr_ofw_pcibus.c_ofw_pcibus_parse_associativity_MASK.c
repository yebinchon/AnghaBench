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
typedef  int /*<<< orphan*/  device_t ;
typedef  int cell_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int*,int) ; 
 int FUNC1 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int *domain)
{
	phandle_t node;
	cell_t associativity[5];
	int res;

	if ((node = FUNC3(dev)) == -1) {
		if (bootverbose)
			FUNC2(dev, "no ofw node found\n");
		return (ENXIO);
	}
	res = FUNC1(node, "ibm,associativity");
	if (res <= 0)
		return (ENXIO);
	FUNC0(node, "ibm,associativity",
		associativity, res);

	*domain = associativity[3];
	if (bootverbose)
		FUNC2(dev, "domain(%d)\n", *domain);
	return (0);
}