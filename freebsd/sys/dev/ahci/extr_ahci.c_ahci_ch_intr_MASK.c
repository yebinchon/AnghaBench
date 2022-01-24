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
typedef  int /*<<< orphan*/  uint32_t ;
struct ahci_channel {int /*<<< orphan*/  mtx; int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_IS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct ahci_channel *ch = (struct ahci_channel *)arg;
	uint32_t istatus;

	/* Read interrupt statuses. */
	istatus = FUNC0(ch->r_mem, AHCI_P_IS);

	FUNC2(&ch->mtx);
	FUNC1(ch, istatus);
	FUNC3(&ch->mtx);
}