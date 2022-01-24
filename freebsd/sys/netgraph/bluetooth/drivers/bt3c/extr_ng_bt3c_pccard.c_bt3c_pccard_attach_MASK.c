#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
typedef  TYPE_3__* bt3c_softc_p ;
struct TYPE_8__ {int /*<<< orphan*/  ifq_mtx; int /*<<< orphan*/  ifq_maxlen; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifq_mtx; int /*<<< orphan*/  ifq_maxlen; } ;
struct TYPE_9__ {int want; scalar_t__ iobase_rid; int /*<<< orphan*/ * iobase; scalar_t__ irq_rid; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * irq_cookie; int /*<<< orphan*/ * ith; int /*<<< orphan*/ * node; int /*<<< orphan*/  state; TYPE_2__ outq; TYPE_1__ inq; int /*<<< orphan*/  debug; int /*<<< orphan*/  dev; int /*<<< orphan*/  ioh; int /*<<< orphan*/  iot; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT3C_DEFAULTQLEN ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_TTY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  NG_BT3C_W4_PKT_IND ; 
 int /*<<< orphan*/  NG_BT3C_WARN_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SWI_TTY ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  bt3c_intr ; 
 int /*<<< orphan*/  bt3c_swi_intr ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tty_intr_event ; 
 int /*<<< orphan*/  typestruct ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	bt3c_softc_p	sc = (bt3c_softc_p) FUNC8(dev);

	/* Allocate I/O ports */
	sc->iobase_rid = 0;
	sc->iobase = FUNC3(dev, SYS_RES_IOPORT,
			&sc->iobase_rid, 8, RF_ACTIVE);
	if (sc->iobase == NULL) {
		FUNC9(dev, "Could not allocate I/O ports\n");
		goto bad;
	}
	sc->iot = FUNC14(sc->iobase);
	sc->ioh = FUNC13(sc->iobase);

	/* Allocate IRQ */
	sc->irq_rid = 0;
	sc->irq = FUNC2(dev, SYS_RES_IRQ, &sc->irq_rid,
			RF_ACTIVE);
	if (sc->irq == NULL) {
		FUNC9(dev, "Could not allocate IRQ\n");
		goto bad;
	}

	sc->irq_cookie = NULL;
	if (FUNC5(dev, sc->irq, INTR_TYPE_TTY, NULL, bt3c_intr, sc,
			&sc->irq_cookie) != 0) {
		FUNC9(dev, "Could not setup ISR\n");
		goto bad;
	}

	/* Attach handler to TTY SWI thread */
	sc->ith = NULL;
	if (FUNC15(&tty_intr_event, FUNC7(dev),
			bt3c_swi_intr, sc, SWI_TTY, 0, &sc->ith) < 0) {
		FUNC9(dev, "Could not setup SWI ISR\n");
		goto bad;
	}

	/* Create Netgraph node */
	if (FUNC11(&typestruct, &sc->node) != 0) {
		FUNC9(dev, "Could not create Netgraph node\n");
		sc->node = NULL;
		goto bad;
	}

	/* Name Netgraph node */
	if (FUNC12(sc->node, FUNC7(dev)) != 0) {
		FUNC9(dev, "Could not name Netgraph node\n");
		FUNC1(sc->node);
		sc->node = NULL;
		goto bad;
	}

	sc->dev = dev;
	sc->debug = NG_BT3C_WARN_LEVEL;

	sc->inq.ifq_maxlen = sc->outq.ifq_maxlen = BT3C_DEFAULTQLEN;
	FUNC10(&sc->inq.ifq_mtx, "BT3C inq", NULL, MTX_DEF);
	FUNC10(&sc->outq.ifq_mtx, "BT3C outq", NULL, MTX_DEF);

	sc->state = NG_BT3C_W4_PKT_IND;
	sc->want = 1;

	FUNC0(sc->node, sc);

	return (0);
bad:
	if (sc->ith != NULL) {
		FUNC16(sc->ith);
		sc->ith = NULL;
	}

	if (sc->irq != NULL) {
		if (sc->irq_cookie != NULL)
			FUNC6(dev, sc->irq, sc->irq_cookie);

		FUNC4(dev, SYS_RES_IRQ,
			sc->irq_rid, sc->irq);

		sc->irq = NULL;
		sc->irq_rid = 0;
	}

	if (sc->iobase != NULL) {
		FUNC4(dev, SYS_RES_IOPORT,
			sc->iobase_rid, sc->iobase);

		sc->iobase = NULL;
		sc->iobase_rid = 0;
	}

	return (ENXIO);
}