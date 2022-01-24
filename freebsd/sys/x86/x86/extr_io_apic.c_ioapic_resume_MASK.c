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
struct pic {int dummy; } ;
struct ioapic {int io_numintr; int /*<<< orphan*/ * io_pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  icu_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct pic *pic, bool suspend_cancelled)
{
	struct ioapic *io = (struct ioapic *)pic;
	int i;

	FUNC1(&icu_lock);
	for (i = 0; i < io->io_numintr; i++)
		FUNC0(&io->io_pins[i]);
	FUNC2(&icu_lock);
}