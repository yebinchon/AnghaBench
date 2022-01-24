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
struct TYPE_2__ {int /*<<< orphan*/  csts; int /*<<< orphan*/  cc; } ;
struct pci_nvme_softc {scalar_t__ pending_ios; int /*<<< orphan*/  iosemlock; int /*<<< orphan*/  mtx; TYPE_1__ regs; struct pci_nvme_ioreq* ioreqs_free; } ;
struct pci_nvme_ioreq {struct pci_nvme_ioreq* next; scalar_t__ sqid; int /*<<< orphan*/ * nvme_sq; int /*<<< orphan*/ * sc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVME_CSTS_RDY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct pci_nvme_softc *sc, struct pci_nvme_ioreq *req)
{
	req->sc = NULL;
	req->nvme_sq = NULL;
	req->sqid = 0;

	FUNC2(&sc->mtx);

	req->next = sc->ioreqs_free;
	sc->ioreqs_free = req;
	sc->pending_ios--;

	/* when no more IO pending, can set to ready if device reset/enabled */
	if (sc->pending_ios == 0 &&
	    FUNC0(sc->regs.cc) && !(FUNC1(sc->regs.csts)))
		sc->regs.csts |= NVME_CSTS_RDY;

	FUNC3(&sc->mtx);

	FUNC4(&sc->iosemlock);
}