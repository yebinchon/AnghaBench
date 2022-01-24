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
typedef  int uint64_t ;
struct pci_devinst {TYPE_1__* pi_bar; } ;
struct TYPE_2__ {scalar_t__ type; int addr; } ;

/* Variables and functions */
#define  PCIBAR_IO 131 
#define  PCIBAR_MEM32 130 
#define  PCIBAR_MEM64 129 
#define  PCIBAR_MEMHI64 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_devinst*) ; 
 int FUNC2 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int) ; 

__attribute__((used)) static void
FUNC5(struct pci_devinst *pi, uint64_t addr, int idx, int type)
{
	int decode;

	if (pi->pi_bar[idx].type == PCIBAR_IO)
		decode = FUNC2(pi);
	else
		decode = FUNC1(pi);

	if (decode)
		FUNC4(pi, idx);

	switch (type) {
	case PCIBAR_IO:
	case PCIBAR_MEM32:
		pi->pi_bar[idx].addr = addr;
		break;
	case PCIBAR_MEM64:
		pi->pi_bar[idx].addr &= ~0xffffffffUL;
		pi->pi_bar[idx].addr |= addr;
		break;
	case PCIBAR_MEMHI64:
		pi->pi_bar[idx].addr &= 0xffffffff;
		pi->pi_bar[idx].addr |= addr;
		break;
	default:
		FUNC0(0);
	}

	if (decode)
		FUNC3(pi, idx);
}