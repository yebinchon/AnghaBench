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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ BRIDGE_PCIEIO_BASE0 ; 
 scalar_t__ BRIDGE_PCIEIO_LIMIT0 ; 
 scalar_t__ BRIDGE_PCIEMEM_BASE0 ; 
 scalar_t__ BRIDGE_PCIEMEM_LIMIT0 ; 
 int /*<<< orphan*/  PCIE_BYTE_SWAP_IO_BASE ; 
 int /*<<< orphan*/  PCIE_BYTE_SWAP_IO_LIM ; 
 int /*<<< orphan*/  PCIE_BYTE_SWAP_MEM_BASE ; 
 int /*<<< orphan*/  PCIE_BYTE_SWAP_MEM_LIM ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(int node, int link)
{
#if BYTE_ORDER == BIG_ENDIAN
	uint64_t bbase, linkpcibase;
	uint32_t bar;
	int pcieoffset;

	pcieoffset = FUNC0(node, link);
	if (!FUNC1(pcieoffset))
		return;

	bbase = FUNC2(node);
	linkpcibase = FUNC3(pcieoffset);
	bar = FUNC4(bbase, BRIDGE_PCIEMEM_BASE0 + link);
	FUNC5(linkpcibase, PCIE_BYTE_SWAP_MEM_BASE, bar);

	bar = FUNC4(bbase, BRIDGE_PCIEMEM_LIMIT0 + link);
	FUNC5(linkpcibase, PCIE_BYTE_SWAP_MEM_LIM, bar | 0xFFF);

	bar = FUNC4(bbase, BRIDGE_PCIEIO_BASE0 + link);
	FUNC5(linkpcibase, PCIE_BYTE_SWAP_IO_BASE, bar);

	bar = FUNC4(bbase, BRIDGE_PCIEIO_LIMIT0 + link);
	FUNC5(linkpcibase, PCIE_BYTE_SWAP_IO_LIM, bar | 0xFFF);
#endif
}