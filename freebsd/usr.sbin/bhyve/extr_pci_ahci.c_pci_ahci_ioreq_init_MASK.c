#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ahci_port {int ioqsz; int /*<<< orphan*/  iobhd; int /*<<< orphan*/  iofhd; int /*<<< orphan*/  atapi; struct ahci_ioreq* ioreq; int /*<<< orphan*/  bctx; } ;
struct TYPE_2__ {struct ahci_ioreq* br_param; int /*<<< orphan*/  br_callback; } ;
struct ahci_ioreq {TYPE_1__ io_req; struct ahci_port* io_pr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ahci_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ata_ioreq_cb ; 
 int /*<<< orphan*/  atapi_ioreq_cb ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct ahci_ioreq* FUNC4 (int,int) ; 
 int /*<<< orphan*/  io_flist ; 

__attribute__((used)) static void
FUNC5(struct ahci_port *pr)
{
	struct ahci_ioreq *vr;
	int i;

	pr->ioqsz = FUNC3(pr->bctx);
	pr->ioreq = FUNC4(pr->ioqsz, sizeof(struct ahci_ioreq));
	FUNC0(&pr->iofhd);

	/*
	 * Add all i/o request entries to the free queue
	 */
	for (i = 0; i < pr->ioqsz; i++) {
		vr = &pr->ioreq[i];
		vr->io_pr = pr;
		if (!pr->atapi)
			vr->io_req.br_callback = ata_ioreq_cb;
		else
			vr->io_req.br_callback = atapi_ioreq_cb;
		vr->io_req.br_param = vr;
		FUNC1(&pr->iofhd, vr, io_flist);
	}

	FUNC2(&pr->iobhd);
}