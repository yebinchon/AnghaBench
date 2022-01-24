#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int rm_end; char* rm_descr; void* rm_type; scalar_t__ rm_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  GBU_MEM_BASE ; 
 int GBU_MEM_LIMIT ; 
 int /*<<< orphan*/  PCIE_IO_BASE ; 
 int PCIE_IO_LIMIT ; 
 int /*<<< orphan*/  PCIE_MEM_BASE ; 
 int PCIE_MEM_LIMIT ; 
 int /*<<< orphan*/  PCI_ECFG_BASE ; 
 int PCI_ECFG_LIMIT ; 
 void* RMAN_ARRAY ; 
 TYPE_1__ gbu_rman ; 
 TYPE_1__ irq_rman ; 
 TYPE_1__ mem_rman ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ pci_ecfg_rman ; 
 TYPE_1__ port_rman ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	irq_rman.rm_start = 0;
	irq_rman.rm_end = 255;
	irq_rman.rm_type = RMAN_ARRAY;
	irq_rman.rm_descr = "PCI Mapped Interrupts";
	if (FUNC1(&irq_rman)
	    || FUNC2(&irq_rman, 0, 255))
		FUNC0("xlp_simplebus_init_resources irq_rman");

	port_rman.rm_type = RMAN_ARRAY;
	port_rman.rm_descr = "I/O ports";
	if (FUNC1(&port_rman)
	    || FUNC2(&port_rman, PCIE_IO_BASE, PCIE_IO_LIMIT))
		FUNC0("xlp_simplebus_init_resources port_rman");

	mem_rman.rm_type = RMAN_ARRAY;
	mem_rman.rm_descr = "I/O memory";
	if (FUNC1(&mem_rman)
	    || FUNC2(&mem_rman, PCIE_MEM_BASE, PCIE_MEM_LIMIT))
		FUNC0("xlp_simplebus_init_resources mem_rman");

	pci_ecfg_rman.rm_type = RMAN_ARRAY;
	pci_ecfg_rman.rm_descr = "PCI ECFG IO";
	if (FUNC1(&pci_ecfg_rman) || FUNC2(&pci_ecfg_rman,
	    PCI_ECFG_BASE, PCI_ECFG_LIMIT))
		FUNC0("xlp_simplebus_init_resources pci_ecfg_rman");

	gbu_rman.rm_type = RMAN_ARRAY;
	gbu_rman.rm_descr = "Flash region";
	if (FUNC1(&gbu_rman)
	    || FUNC2(&gbu_rman, GBU_MEM_BASE, GBU_MEM_LIMIT))
		FUNC0("xlp_simplebus_init_resources gbu_rman");
}