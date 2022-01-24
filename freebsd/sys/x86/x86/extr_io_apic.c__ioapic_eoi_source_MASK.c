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
struct ioapic_intsrc {int io_vector; int io_lowreg; int /*<<< orphan*/  io_intpin; scalar_t__ io_edgetrigger; } ;
struct ioapic {scalar_t__ io_addr; scalar_t__ io_haseoi; } ;
struct intsrc {scalar_t__ is_pic; } ;

/* Variables and functions */
 int IOAPIC_EOIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IOART_INTMSET ; 
 int IOART_TRGREDG ; 
 int IOART_TRGRLVL ; 
 int /*<<< orphan*/  icu_lock ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  lapic_eoi_suppression ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct intsrc *isrc, int locked)
{
	struct ioapic_intsrc *src;
	struct ioapic *io;
	volatile uint32_t *apic_eoi;
	uint32_t low1;

	FUNC2();
	if (!lapic_eoi_suppression)
		return;
	src = (struct ioapic_intsrc *)isrc;
	if (src->io_edgetrigger)
		return;
	io = (struct ioapic *)isrc->is_pic;

	/*
	 * Handle targeted EOI for level-triggered pins, if broadcast
	 * EOI suppression is supported by LAPICs.
	 */
	if (io->io_haseoi) {
		/*
		 * If IOAPIC has EOI Register, simply write vector
		 * number into the reg.
		 */
		apic_eoi = (volatile uint32_t *)((volatile char *)
		    io->io_addr + IOAPIC_EOIR);
		*apic_eoi = src->io_vector;
	} else {
		/*
		 * Otherwise, if IO-APIC is too old to provide EOIR,
		 * do what Intel did for the Linux kernel. Temporary
		 * switch the pin to edge-trigger and back, masking
		 * the pin during the trick.
		 */
		if (!locked)
			FUNC3(&icu_lock);
		low1 = src->io_lowreg;
		low1 &= ~IOART_TRGRLVL;
		low1 |= IOART_TRGREDG | IOART_INTMSET;
		FUNC1(io->io_addr, FUNC0(src->io_intpin),
		    low1);
		FUNC1(io->io_addr, FUNC0(src->io_intpin),
		    src->io_lowreg);
		if (!locked)
			FUNC4(&icu_lock);
	}
}