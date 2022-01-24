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
typedef  scalar_t__ uint32_t ;
struct cam_sim {int dummy; } ;
struct ahci_channel {scalar_t__ resetting; scalar_t__ resetpolldiv; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_IS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cam_sim*) ; 

__attribute__((used)) static void
FUNC5(struct cam_sim *sim)
{
	struct ahci_channel *ch = (struct ahci_channel *)FUNC4(sim);
	uint32_t istatus;

	/* Read interrupt statuses and process if any. */
	istatus = FUNC0(ch->r_mem, AHCI_P_IS);
	if (istatus != 0)
		FUNC1(ch, istatus);
	if (ch->resetting != 0 &&
	    (--ch->resetpolldiv <= 0 || !FUNC3(&ch->reset_timer))) {
		ch->resetpolldiv = 1000;
		FUNC2(ch);
	}
}