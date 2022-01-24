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
typedef  int uint8_t ;
struct cuda_softc {int sc_rtc; int /*<<< orphan*/  adb_bus; int /*<<< orphan*/  sc_state; int /*<<< orphan*/ * sc_pkts; int /*<<< orphan*/  sc_freeq; int /*<<< orphan*/  sc_outq; int /*<<< orphan*/  sc_inq; scalar_t__ sc_autopoll; scalar_t__ sc_polling; scalar_t__ sc_waiting; scalar_t__ sc_received; scalar_t__ sc_sent; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/ * sc_irq; scalar_t__ sc_irqrid; int /*<<< orphan*/ * sc_memr; scalar_t__ sc_memrid; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  sc_dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CUDA_IDLE ; 
 int volatile CUDA_MAXPACKETS ; 
 int /*<<< orphan*/  CUDA_NOTREADY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cuda_softc*,int /*<<< orphan*/ ) ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct cuda_softc*) ; 
 int /*<<< orphan*/  cuda_intr ; 
 int FUNC14 (struct cuda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cuda_shutdown ; 
 int /*<<< orphan*/  FUNC15 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct cuda_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 struct cuda_softc* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pkt_q ; 
 int /*<<< orphan*/  shutdown_final ; 
 scalar_t__ FUNC24 (char*,char*,int) ; 
 int /*<<< orphan*/  vACR ; 
 int /*<<< orphan*/  vDirB ; 
 int /*<<< orphan*/  vIER ; 
 int /*<<< orphan*/  vSR ; 
 int vSR_OUT ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
	struct cuda_softc *sc;

	volatile int i;
	uint8_t reg;
	phandle_t node,child;
	
	sc = FUNC19(dev);
	sc->sc_dev = dev;
	
	sc->sc_memrid = 0;
	sc->sc_memr = FUNC7(dev, SYS_RES_MEMORY, 
	    &sc->sc_memrid, RF_ACTIVE);

	if (sc->sc_memr == NULL) {
		FUNC20(dev, "Could not alloc mem resource!\n");
		return (ENXIO);
	}

	sc->sc_irqrid = 0;
	sc->sc_irq = FUNC7(dev, SYS_RES_IRQ, &sc->sc_irqrid,
            	RF_ACTIVE);
        if (sc->sc_irq == NULL) {
                FUNC20(dev, "could not allocate interrupt\n");
                FUNC9(dev, SYS_RES_MEMORY, sc->sc_memrid,
                    sc->sc_memr);
                return (ENXIO);
        }

	if (FUNC10(dev, sc->sc_irq, INTR_TYPE_MISC | INTR_MPSAFE 
	    | INTR_ENTROPY, NULL, cuda_intr, dev, &sc->sc_ih) != 0) {
                FUNC20(dev, "could not setup interrupt\n");
                FUNC9(dev, SYS_RES_MEMORY, sc->sc_memrid,
                    sc->sc_memr);
                FUNC9(dev, SYS_RES_IRQ, sc->sc_irqrid,
                    sc->sc_irq);
                return (ENXIO);
        }

	FUNC22(&sc->sc_mutex,"cuda",NULL,MTX_DEF | MTX_RECURSE);

	sc->sc_sent = 0;
	sc->sc_received = 0;
	sc->sc_waiting = 0;
	sc->sc_polling = 0;
	sc->sc_state = CUDA_NOTREADY;
	sc->sc_autopoll = 0;
	sc->sc_rtc = -1;

	FUNC5(&sc->sc_inq);
	FUNC5(&sc->sc_outq);
	FUNC5(&sc->sc_freeq);

	for (i = 0; i < CUDA_MAXPACKETS; i++)
		FUNC6(&sc->sc_freeq, &sc->sc_pkts[i], pkt_q);

	/* Init CUDA */

	reg = FUNC14(sc, vDirB);
	reg |= 0x30;	/* register B bits 4 and 5: outputs */
	FUNC17(sc, vDirB, reg);

	reg = FUNC14(sc, vDirB);
	reg &= 0xf7;	/* register B bit 3: input */
	FUNC17(sc, vDirB, reg);

	reg = FUNC14(sc, vACR);
	reg &= ~vSR_OUT;	/* make sure SR is set to IN */
	FUNC17(sc, vACR, reg);

	FUNC17(sc, vACR, (FUNC14(sc, vACR) | 0x0c) & ~0x10);

	sc->sc_state = CUDA_IDLE;	/* used by all types of hardware */

	FUNC17(sc, vIER, 0x84); /* make sure VIA interrupts are on */

	FUNC13(sc);	/* reset ADB */

	/* Reset CUDA */

	i = FUNC14(sc, vSR);	/* clear interrupt */
	FUNC17(sc, vIER, 0x04); /* no interrupts while clearing */
	FUNC13(sc);	/* reset state to idle */
	FUNC0(150);
	FUNC15(sc);	/* signal start of frame */
	FUNC0(150);
	FUNC16(sc);
	FUNC0(150);
	FUNC12(sc);
	FUNC0(150);
	FUNC13(sc);	/* back to idle state */
	i = FUNC14(sc, vSR);	/* clear interrupt */
	FUNC17(sc, vIER, 0x84);	/* ints ok now */

	/* Initialize child buses (ADB) */
	node = FUNC23(dev);

	for (child = FUNC2(node); child != 0; child = FUNC4(child)) {
		char name[32];

		FUNC21(name, 0, sizeof(name));
		FUNC3(child, "name", name, sizeof(name));

		if (bootverbose)
			FUNC20(dev, "CUDA child <%s>\n",name);

		if (FUNC24(name, "adb", 4) == 0) {
			sc->adb_bus = FUNC18(dev,"adb",-1);
		}
	}

	FUNC11(dev, 1000);
	FUNC1(shutdown_final, cuda_shutdown, sc,
	    SHUTDOWN_PRI_LAST);

	return (FUNC8(dev));
}