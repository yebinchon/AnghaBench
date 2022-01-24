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
typedef  int /*<<< orphan*/  reg ;
typedef  int phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,char*,int*,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static phandle_t
FUNC4(int cpu)
{
	phandle_t node;
	pcell_t reg;

	node = FUNC1("/cpus");
	if (node == -1)
		return (node);

	for (node = FUNC0(node); node != 0; node = FUNC3(node)) {
		if (FUNC2(node, "reg", &reg, sizeof(reg)) <= 0)
			continue;
		if (reg == cpu)
			return (node);
	}
	return (-1);
}