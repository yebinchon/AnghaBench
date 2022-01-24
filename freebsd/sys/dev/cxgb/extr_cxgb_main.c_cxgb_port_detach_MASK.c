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
struct sge_txq {int /*<<< orphan*/  txq_timer; int /*<<< orphan*/  txq_watchdog; } ;
struct sge_qset {struct sge_txq* txq; } ;
struct port_info {int first_qset; int nqsets; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * port_cdev; struct adapter* adapter; } ;
struct TYPE_2__ {struct sge_qset* qs; } ;
struct adapter {int /*<<< orphan*/  flags; TYPE_1__ sge; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct port_info*) ; 
 size_t TXQ_ETH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct port_info *p;
	struct adapter *sc;
	int i;

	p = FUNC10(dev);
	sc = p->adapter;

	/* Tell cxgb_ioctl and if_init that the port is going away */
	FUNC0(sc);
	FUNC6(p);
	FUNC14(&sc->flags);
	while (FUNC3(sc))
		FUNC13(&sc->flags, &sc->lock, 0, "cxgbdtch", 0);
	FUNC5(sc);
	FUNC1(sc);

	if (p->port_cdev != NULL)
		FUNC9(p->port_cdev);

	FUNC8(p);
	FUNC11(p->ifp);

	for (i = p->first_qset; i < p->first_qset + p->nqsets; i++) {
		struct sge_qset *qs = &sc->sge.qs[i];
		struct sge_txq *txq = &qs->txq[TXQ_ETH];

		FUNC7(&txq->txq_watchdog);
		FUNC7(&txq->txq_timer);
	}

	FUNC4(p);
	FUNC12(p->ifp);
	p->ifp = NULL;

	FUNC0(sc);
	FUNC2(sc);
	FUNC15(&sc->flags);
	FUNC1(sc);
	return (0);
}