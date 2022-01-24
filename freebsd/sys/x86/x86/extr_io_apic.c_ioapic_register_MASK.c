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
struct ioapic_intsrc {int /*<<< orphan*/  io_intsrc; } ;
struct ioapic {int io_id; int io_intbase; int io_numintr; struct ioapic_intsrc* io_pins; int /*<<< orphan*/  io_pic; int /*<<< orphan*/ * io_addr; } ;
typedef  int /*<<< orphan*/  ioapic_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOAPIC_VER ; 
 int IOART_VER_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ioapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icu_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  io_next ; 
 int /*<<< orphan*/  ioapic_list ; 
 int FUNC2 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,int) ; 

void
FUNC7(void *cookie)
{
	struct ioapic_intsrc *pin;
	struct ioapic *io;
	volatile ioapic_t *apic;
	uint32_t flags;
	int i;

	io = (struct ioapic *)cookie;
	apic = io->io_addr;
	FUNC4(&icu_lock);
	flags = FUNC2(apic, IOAPIC_VER) & IOART_VER_VERSION;
	FUNC0(&ioapic_list, io, io_next);
	FUNC5(&icu_lock);
	FUNC6("ioapic%u <Version %u.%u> irqs %u-%u\n",
	    io->io_id, flags >> 4, flags & 0xf, io->io_intbase,
	    io->io_intbase + io->io_numintr - 1);

	/*
	 * Reprogram pins to handle special case pins (such as NMI and
	 * SMI) and disable normal pins until a handler is registered.
	 */
	FUNC1(&io->io_pic);
	for (i = 0, pin = io->io_pins; i < io->io_numintr; i++, pin++)
		FUNC3(&pin->io_intsrc);
}