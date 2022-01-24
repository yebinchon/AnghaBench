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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct vmctx {int dummy; } ;
struct pci_emul_dsoftc {int* ioregs; int** memregs; } ;
struct pci_devinst {struct pci_emul_dsoftc* pi_arg; } ;

/* Variables and functions */
 int DIOSZ ; 
 int DMEMSZ ; 
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,int) ; 
 scalar_t__ FUNC1 (struct pci_devinst*) ; 
 int FUNC2 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static void
FUNC4(struct vmctx *ctx, int vcpu, struct pci_devinst *pi, int baridx,
	      uint64_t offset, int size, uint64_t value)
{
	int i;
	struct pci_emul_dsoftc *sc = pi->pi_arg;

	if (baridx == 0) {
		if (offset + size > DIOSZ) {
			FUNC3("diow: iow too large, offset %ld size %d\n",
			       offset, size);
			return;
		}

		if (size == 1) {
			sc->ioregs[offset] = value & 0xff;
		} else if (size == 2) {
			*(uint16_t *)&sc->ioregs[offset] = value & 0xffff;
		} else if (size == 4) {
			*(uint32_t *)&sc->ioregs[offset] = value;
		} else {
			FUNC3("diow: iow unknown size %d\n", size);
		}

		/*
		 * Special magic value to generate an interrupt
		 */
		if (offset == 4 && size == 4 && FUNC1(pi))
			FUNC0(pi, value % FUNC2(pi));

		if (value == 0xabcdef) {
			for (i = 0; i < FUNC2(pi); i++)
				FUNC0(pi, i);
		}
	}

	if (baridx == 1 || baridx == 2) {
		if (offset + size > DMEMSZ) {
			FUNC3("diow: memw too large, offset %ld size %d\n",
			       offset, size);
			return;
		}

		i = baridx - 1;		/* 'memregs' index */

		if (size == 1) {
			sc->memregs[i][offset] = value;
		} else if (size == 2) {
			*(uint16_t *)&sc->memregs[i][offset] = value;
		} else if (size == 4) {
			*(uint32_t *)&sc->memregs[i][offset] = value;
		} else if (size == 8) {
			*(uint64_t *)&sc->memregs[i][offset] = value;
		} else {
			FUNC3("diow: memw unknown size %d\n", size);
		}

		/*
		 * magic interrupt ??
		 */
	}

	if (baridx > 2 || baridx < 0) {
		FUNC3("diow: unknown bar idx %d\n", baridx);
	}
}