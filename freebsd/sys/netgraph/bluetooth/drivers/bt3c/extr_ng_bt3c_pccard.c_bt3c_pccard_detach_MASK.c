#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
typedef  TYPE_1__* bt3c_softc_p ;
struct TYPE_4__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_3__ {TYPE_2__ outq; TYPE_2__ inq; int /*<<< orphan*/  m; int /*<<< orphan*/ * node; scalar_t__ iobase_rid; int /*<<< orphan*/ * iobase; scalar_t__ irq_rid; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * irq_cookie; int /*<<< orphan*/ * ith; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	bt3c_softc_p	sc = (bt3c_softc_p) FUNC5(dev);

	if (sc == NULL)
		return (0);

	FUNC8(sc->ith);
	sc->ith = NULL;

	FUNC4(dev, sc->irq, sc->irq_cookie);
	FUNC3(dev, SYS_RES_IRQ, sc->irq_rid, sc->irq);
	sc->irq_cookie = NULL;
	sc->irq = NULL;
	sc->irq_rid = 0;

	FUNC3(dev, SYS_RES_IOPORT, sc->iobase_rid, sc->iobase);
	sc->iobase = NULL;
	sc->iobase_rid = 0;

	if (sc->node != NULL) {
		FUNC2(sc->node, NULL);
		FUNC7(sc->node);
		sc->node = NULL;
	}

	FUNC1(sc->m);
	FUNC0(&sc->inq);
	FUNC0(&sc->outq);

	FUNC6(&sc->inq.ifq_mtx);
	FUNC6(&sc->outq.ifq_mtx);

	return (0);
}