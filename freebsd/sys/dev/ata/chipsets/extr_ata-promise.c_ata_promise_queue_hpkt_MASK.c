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
typedef  int /*<<< orphan*/  u_int32_t ;
struct host_packet {int /*<<< orphan*/  addr; } ;
struct ata_promise_sx4 {int busy; int /*<<< orphan*/  mtx; int /*<<< orphan*/  queue; } ;
struct ata_pci_controller {int /*<<< orphan*/  r_res2; struct ata_promise_sx4* chipset_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct host_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain ; 
 struct host_packet* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ata_pci_controller *ctlr, u_int32_t hpkt)
{
    struct ata_promise_sx4 *hpktp = ctlr->chipset_data;

    FUNC3(&hpktp->mtx);
    if (hpktp->busy) {
	struct host_packet *hp = 
	    FUNC2(sizeof(struct host_packet), M_TEMP, M_NOWAIT | M_ZERO);
	hp->addr = hpkt;
	FUNC1(&hpktp->queue, hp, chain);
    }
    else {
	hpktp->busy = 1;
	FUNC0(ctlr->r_res2, 0x000c0100, hpkt);
    }
    FUNC4(&hpktp->mtx);
}