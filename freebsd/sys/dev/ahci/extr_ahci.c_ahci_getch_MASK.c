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
struct ahci_controller {int /*<<< orphan*/  ch_mtx; struct ahci_channel** ch; } ;
struct ahci_channel {int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AHCI_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ahci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct ahci_channel *
FUNC4(device_t dev, int n)
{
	struct ahci_controller *ctlr = FUNC1(dev);
	struct ahci_channel *ch;

	FUNC0(n >= 0 && n < AHCI_MAX_PORTS, ("Bad channel number %d", n));
	FUNC2(&ctlr->ch_mtx);
	ch = ctlr->ch[n];
	if (ch != NULL)
		FUNC2(&ch->mtx);
	FUNC3(&ctlr->ch_mtx);
	return (ch);
}