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
struct host_packet {int /*<<< orphan*/  addr; } ;
struct ata_promise_sx4 {int /*<<< orphan*/  mtx; scalar_t__ busy; int /*<<< orphan*/  queue; } ;
struct ata_pci_controller {int /*<<< orphan*/  r_res2; struct ata_promise_sx4* chipset_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct host_packet* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct host_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC3 (struct host_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ata_pci_controller *ctlr)
{
    struct ata_promise_sx4 *hpktp = ctlr->chipset_data;
    struct host_packet *hp;

    FUNC4(&hpktp->mtx);
    if ((hp = FUNC1(&hpktp->queue))) {
	FUNC2(&hpktp->queue, hp, chain);
	FUNC0(ctlr->r_res2, 0x000c0100, hp->addr);
	FUNC3(hp, M_TEMP);
    }
    else
	hpktp->busy = 0;
    FUNC5(&hpktp->mtx);
}