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
struct ioapic_intsrc {int io_lowreg; scalar_t__ io_masked; int /*<<< orphan*/  io_intpin; } ;
struct ioapic {int /*<<< orphan*/  io_addr; } ;
struct intsrc {scalar_t__ is_pic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IOART_INTMASK ; 
 int /*<<< orphan*/  icu_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct intsrc *isrc)
{
	struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;
	struct ioapic *io = (struct ioapic *)isrc->is_pic;
	uint32_t flags;

	FUNC2(&icu_lock);
	if (intpin->io_masked) {
		flags = intpin->io_lowreg & ~IOART_INTMASK;
		FUNC1(io->io_addr, FUNC0(intpin->io_intpin),
		    flags);
		intpin->io_masked = 0;
	}
	FUNC3(&icu_lock);
}