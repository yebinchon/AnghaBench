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
typedef  int uint16_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int CBB_BCR_ISA_ENABLE ; 
 int CBB_BCR_PREFETCH_0_ENABLE ; 
 int CBB_BCR_PREFETCH_1_ENABLE ; 
 int CBB_BCR_VGA_ENABLE ; 
 int /*<<< orphan*/  PCIR_BRIDGECTL_2 ; 
 int /*<<< orphan*/  PCIR_IOBASE0_2 ; 
 int /*<<< orphan*/  PCIR_IOBASE1_2 ; 
 int /*<<< orphan*/  PCIR_IOLIMIT0_2 ; 
 int /*<<< orphan*/  PCIR_IOLIMIT1_2 ; 
 int /*<<< orphan*/  PCIR_MEMBASE0_2 ; 
 int /*<<< orphan*/  PCIR_MEMBASE1_2 ; 
 int /*<<< orphan*/  PCIR_MEMLIMIT0_2 ; 
 int /*<<< orphan*/  PCIR_MEMLIMIT1_2 ; 
 int /*<<< orphan*/  FUNC0 (int,struct pci_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pci_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(int fd, struct pci_conf *p)
{
	uint16_t bctl;

	bctl = FUNC3(fd, &p->pc_sel, PCIR_BRIDGECTL_2, 2);
	FUNC1(fd, p, PCIR_MEMBASE0_2, PCIR_MEMLIMIT0_2,
	    bctl & CBB_BCR_PREFETCH_0_ENABLE);
	FUNC1(fd, p, PCIR_MEMBASE1_2, PCIR_MEMLIMIT1_2,
	    bctl & CBB_BCR_PREFETCH_1_ENABLE);
	FUNC0(fd, p, PCIR_IOBASE0_2, PCIR_IOLIMIT0_2);
	FUNC0(fd, p, PCIR_IOBASE1_2, PCIR_IOLIMIT1_2);
	FUNC2(bctl & CBB_BCR_ISA_ENABLE,
	    bctl & CBB_BCR_VGA_ENABLE, false);
}