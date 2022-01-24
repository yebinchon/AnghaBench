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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct vmctx {int dummy; } ;
struct pci_fbuf_softc {int /*<<< orphan*/  memregs; } ;
struct pci_devinst {struct pci_fbuf_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_VERBOSE ; 
 scalar_t__ DMEMSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

uint64_t
FUNC3(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
	      int baridx, uint64_t offset, int size)
{
	struct pci_fbuf_softc *sc;
	uint8_t *p;
	uint64_t value;

	FUNC1(baridx == 0);

	sc = pi->pi_arg;


	if (offset + size > DMEMSZ) {
		FUNC2("fbuf: read too large, offset %ld size %d\n",
		       offset, size);
		return (0);
	}

	p = (uint8_t *)&sc->memregs + offset;
	value = 0;
	switch (size) {
	case 1:
		value = *p;
		break;
	case 2:
		value = *(uint16_t *)p;
		break;
	case 4:
		value = *(uint32_t *)p;
		break;
	case 8:
		value = *(uint64_t *)p;
		break;
	default:
		FUNC2("fbuf: read unknown size %d\n", size);
		break;
	}

	FUNC0(DEBUG_VERBOSE,
	    ("fbuf rd: offset 0x%lx, size: %d, value: 0x%lx\n",
	     offset, size, value));

	return (value);
}