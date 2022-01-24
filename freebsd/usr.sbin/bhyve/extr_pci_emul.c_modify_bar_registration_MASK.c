#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_devinst {TYPE_1__* pi_bar; int /*<<< orphan*/  pi_name; } ;
struct mem_range {int arg2; struct pci_devinst* arg1; int /*<<< orphan*/  handler; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  base; int /*<<< orphan*/  name; struct pci_devinst* arg; int /*<<< orphan*/  port; } ;
struct inout_port {int arg2; struct pci_devinst* arg1; int /*<<< orphan*/  handler; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  base; int /*<<< orphan*/  name; struct pci_devinst* arg; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IOPORT_F_INOUT ; 
 int /*<<< orphan*/  MEM_F_RW ; 
#define  PCIBAR_IO 130 
#define  PCIBAR_MEM32 129 
#define  PCIBAR_MEM64 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_range*,int) ; 
 int /*<<< orphan*/  pci_emul_io_handler ; 
 int /*<<< orphan*/  pci_emul_mem_handler ; 
 int FUNC2 (struct mem_range*) ; 
 int FUNC3 (struct mem_range*) ; 
 int FUNC4 (struct mem_range*) ; 
 int FUNC5 (struct mem_range*) ; 

__attribute__((used)) static void
FUNC6(struct pci_devinst *pi, int idx, int registration)
{
	int error;
	struct inout_port iop;
	struct mem_range mr;

	switch (pi->pi_bar[idx].type) {
	case PCIBAR_IO:
		FUNC1(&iop, sizeof(struct inout_port));
		iop.name = pi->pi_name;
		iop.port = pi->pi_bar[idx].addr;
		iop.size = pi->pi_bar[idx].size;
		if (registration) {
			iop.flags = IOPORT_F_INOUT;
			iop.handler = pci_emul_io_handler;
			iop.arg = pi;
			error = FUNC2(&iop);
		} else
			error = FUNC4(&iop);
		break;
	case PCIBAR_MEM32:
	case PCIBAR_MEM64:
		FUNC1(&mr, sizeof(struct mem_range));
		mr.name = pi->pi_name;
		mr.base = pi->pi_bar[idx].addr;
		mr.size = pi->pi_bar[idx].size;
		if (registration) {
			mr.flags = MEM_F_RW;
			mr.handler = pci_emul_mem_handler;
			mr.arg1 = pi;
			mr.arg2 = idx;
			error = FUNC3(&mr);
		} else
			error = FUNC5(&mr);
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC0(error == 0);
}