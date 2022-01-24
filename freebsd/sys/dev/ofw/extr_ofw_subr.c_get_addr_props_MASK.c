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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(phandle_t node, uint32_t *addrp, uint32_t *sizep, int *pcip)
{
	char type[64];
	uint32_t addr, size;
	int pci, res;

	res = FUNC0(node, "#address-cells", &addr, sizeof(addr));
	if (res == -1)
		addr = 2;
	res = FUNC0(node, "#size-cells", &size, sizeof(size));
	if (res == -1)
		size = 1;
	pci = 0;
	if (addr == 3 && size == 2) {
		res = FUNC1(node, "device_type", type, sizeof(type));
		if (res != -1) {
			type[sizeof(type) - 1] = '\0';
			if (FUNC2(type, "pci") == 0 ||
			    FUNC2(type, "pciex")== 0)
				pci = 1;
		}
	}
	if (addrp != NULL)
		*addrp = addr;
	if (sizep != NULL)
		*sizep = size;
	if (pcip != NULL)
		*pcip = pci;
}