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
typedef  int u_int ;
struct tty {int /*<<< orphan*/  t_stop; int /*<<< orphan*/  t_close; int /*<<< orphan*/  t_break; int /*<<< orphan*/  t_modem; int /*<<< orphan*/  t_param; int /*<<< orphan*/  t_oproc; struct rc_chans* t_sc; } ;
struct rc_softc {int sc_unit; int /*<<< orphan*/  sc_swicookie; int /*<<< orphan*/  sc_hwicookie; int /*<<< orphan*/ * sc_irq; struct rc_chans* sc_channels; int /*<<< orphan*/  sc_irqrid; int /*<<< orphan*/ ** sc_port; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; int /*<<< orphan*/  sc_dev; } ;
struct rc_chans {int rc_chan; struct tty* rc_tp; int /*<<< orphan*/  rc_dtrcallout; int /*<<< orphan*/  rc_obuf; int /*<<< orphan*/  rc_obufend; int /*<<< orphan*/  rc_optr; int /*<<< orphan*/ * rc_ibuf; int /*<<< orphan*/ * rc_hiwat; int /*<<< orphan*/ * rc_bufend; int /*<<< orphan*/ * rc_iptr; struct rc_softc* rc_rcb; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CD180_GFRCR ; 
 int CD180_NCHAN ; 
 int /*<<< orphan*/  CD180_PPRH ; 
 int /*<<< orphan*/  CD180_PPRL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_TTY ; 
 int IOBASE_ADDRS ; 
 size_t RC_IBUFSIZE ; 
 size_t RC_IHIGHWATER ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SWI_TTY ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TS_CALLOUT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int* iobase_addrs ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rc_break ; 
 int /*<<< orphan*/  rc_close ; 
 int /*<<< orphan*/  rc_intr ; 
 int /*<<< orphan*/  rc_modem ; 
 int /*<<< orphan*/  rc_param ; 
 int /*<<< orphan*/  rc_pollcard ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rc_start ; 
 int /*<<< orphan*/  rc_stop ; 
 scalar_t__ FUNC10 (struct rc_softc*) ; 
 int FUNC11 (struct rc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct rc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tty_intr_event ; 
 struct tty* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct tty*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
 	struct rc_chans *rc;
	struct tty *tp;
	struct rc_softc *sc;
	u_int port;
	int base, chan, error, i, x;

	sc = FUNC5(dev);
	sc->sc_dev = dev;

	/*
	 * We need to have IO ports.  Lots of them.  We need
	 * the following ranges relative to the base port:
	 * 0x0    -   0x10
	 * 0x400  -  0x410
	 * 0x800  -  0x810
	 * 0xc00  -  0xc10
	 * 0x1400 - 0x1410
	 * 0x1800 - 0x1810
	 * 0x1c00 - 0x1c10
	 * 0x2000 - 0x2010
	 * 0x3000 - 0x3010
	 * 0x3400 - 0x3410
	 * 0x3800 - 0x3810
	 * 0x3c00 - 0x3c10
	 * 0x4000 - 0x4010
	 * 0x8000 - 0x8010
	 */
	port = FUNC8(dev);
	for (i = 0; i < IOBASE_ADDRS; i++)
		if (FUNC2(dev, SYS_RES_IOPORT, i,
		    port + iobase_addrs[i], 0x10) != 0)
			return (ENXIO);
	error = ENOMEM;
	for (i = 0; i < IOBASE_ADDRS; i++) {
		x = i;
		sc->sc_port[i] = FUNC1(dev,
		    SYS_RES_IOPORT, &x, 0x10, RF_ACTIVE);
		if (x != i) {
			FUNC7(dev, "ioport %d was rid %d\n", i, x);
			goto fail;
		}
		if (sc->sc_port[i] == NULL) {
			FUNC7(dev, "failed to alloc ioports %x-%x\n",
			    port + iobase_addrs[i],
			    port + iobase_addrs[i] + 0x10);
			goto fail;
		}
	}
	sc->sc_bt = FUNC14(sc->sc_port[0]);
	sc->sc_bh = FUNC13(sc->sc_port[0]);

	sc->sc_irq = FUNC0(dev, SYS_RES_IRQ, &sc->sc_irqrid,
	    RF_ACTIVE);
	if (sc->sc_irq == NULL) {
		FUNC7(dev, "failed to alloc IRQ\n");
		goto fail;
	}

	/*
	 * Now do some actual tests to make sure it works.
	 */
	error = ENXIO;
	FUNC12(sc, CD180_PPRL, 0x22); /* Random values to Prescale reg. */
	FUNC12(sc, CD180_PPRH, 0x11);
	if (FUNC11(sc, CD180_PPRL) != 0x22 || FUNC11(sc, CD180_PPRH) != 0x11)
		goto fail;
	if (FUNC10(sc))
		goto fail;

	/*
	 * Ok, start actually hooking things up.
	 */
	sc->sc_unit = FUNC6(dev);
	/*sc->sc_chipid = 0x10 + device_get_unit(dev);*/
	FUNC7(dev, "%d chans, firmware rev. %c\n",
		CD180_NCHAN, (FUNC11(sc, CD180_GFRCR) & 0xF) + 'A');
	rc = sc->sc_channels;
	base = CD180_NCHAN * sc->sc_unit;
	for (chan = 0; chan < CD180_NCHAN; chan++, rc++) {
		rc->rc_rcb     = sc;
		rc->rc_chan    = chan;
		rc->rc_iptr    = rc->rc_ibuf;
		rc->rc_bufend  = &rc->rc_ibuf[RC_IBUFSIZE];
		rc->rc_hiwat   = &rc->rc_ibuf[RC_IHIGHWATER];
		rc->rc_optr    = rc->rc_obufend  = rc->rc_obuf;
		FUNC4(&rc->rc_dtrcallout, 0);
		tp = rc->rc_tp = FUNC16();
		tp->t_sc = rc;
		tp->t_oproc   = rc_start;
		tp->t_param   = rc_param;
		tp->t_modem   = rc_modem;
		tp->t_break   = rc_break;
		tp->t_close   = rc_close;
		tp->t_stop    = rc_stop;
		FUNC17(tp, TS_CALLOUT, "m%d", chan + base);
	}

	error = FUNC3(dev, sc->sc_irq, INTR_TYPE_TTY, NULL, rc_intr,
	    sc, &sc->sc_hwicookie);
	if (error) {
		FUNC7(dev, "failed to register interrupt handler\n");
		goto fail;
	}
		
	FUNC15(&tty_intr_event, "rc", rc_pollcard, sc, SWI_TTY, 0,
	    &sc->sc_swicookie);
	return (0);

fail:
	FUNC9(dev);
	return (error);
}