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
typedef  int /*<<< orphan*/  xref ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,char*,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, uint32_t *offset)
{
	pcell_t dts_value[2];
	phandle_t mem_node;
	phandle_t xref;
	phandle_t node;
	int len;

	if ((node = FUNC4(dev)) == -1)
		return (ENXIO);

	if (FUNC3(node, "beri-mem", &xref,
		sizeof(xref)) == -1) {
		return (ENXIO);
	}

	mem_node = FUNC2(xref);
	if ((len = FUNC1(mem_node, "reg")) <= 0)
		return (ENXIO);
	FUNC0(mem_node, "reg", dts_value, len);
	*offset = dts_value[0];

	return (0);
}