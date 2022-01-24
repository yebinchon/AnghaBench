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
typedef  int /*<<< orphan*/  uint8_t ;
struct blockif_req {int dummy; } ;
struct ahci_port {int pending; int /*<<< orphan*/  bctx; int /*<<< orphan*/  iobhd; int /*<<< orphan*/  iofhd; } ;
struct ahci_ioreq {int slot; struct blockif_req io_req; scalar_t__ more; scalar_t__ done; scalar_t__ len; int /*<<< orphan*/ * cfis; } ;

/* Variables and functions */
 struct ahci_ioreq* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ahci_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct blockif_req*) ; 
 int /*<<< orphan*/  io_blist ; 
 int /*<<< orphan*/  io_flist ; 

__attribute__((used)) static void
FUNC5(struct ahci_port *p, int slot, uint8_t *cfis)
{
	struct ahci_ioreq *aior;
	struct blockif_req *breq;
	int err;

	/*
	 * Pull request off free list
	 */
	aior = FUNC0(&p->iofhd);
	FUNC3(aior != NULL);
	FUNC1(&p->iofhd, io_flist);
	aior->cfis = cfis;
	aior->slot = slot;
	aior->len = 0;
	aior->done = 0;
	aior->more = 0;
	breq = &aior->io_req;

	/*
	 * Mark this command in-flight.
	 */
	p->pending |= 1 << slot;

	/*
	 * Stuff request onto busy list
	 */
	FUNC2(&p->iobhd, aior, io_blist);

	err = FUNC4(p->bctx, breq);
	FUNC3(err == 0);
}