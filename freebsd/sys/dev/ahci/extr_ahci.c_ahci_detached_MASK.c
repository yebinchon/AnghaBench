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
struct ahci_controller {int /*<<< orphan*/  ch_mtx; int /*<<< orphan*/ ** ch; } ;
struct ahci_channel {size_t unit; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ahci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(device_t dev, struct ahci_channel *ch)
{
	struct ahci_controller *ctlr = FUNC0(dev);

	FUNC1(&ctlr->ch_mtx);
	FUNC1(&ch->mtx);
	ctlr->ch[ch->unit] = NULL;
	FUNC2(&ch->mtx);
	FUNC2(&ctlr->ch_mtx);
}