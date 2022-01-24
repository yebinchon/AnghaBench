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
typedef  int u_int ;
struct TYPE_2__ {int regshft; int /*<<< orphan*/  bst; int /*<<< orphan*/  bsh; } ;
struct scc_softc {int sc_rrid; int sc_fastintr; int sc_polled; int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_rtype; struct scc_chan* sc_chan; TYPE_1__ sc_bas; int /*<<< orphan*/  sc_hwmtx; struct scc_class* sc_class; } ;
struct scc_mode {unsigned int m_mode; int m_probed; int m_sysdev; int m_attached; int /*<<< orphan*/  m_dev; struct scc_chan* m_chan; } ;
struct scc_class {int size; scalar_t__ cl_range; int cl_channels; int cl_modes; } ;
struct scc_chan {int ch_irid; int ch_nr; int ch_enabled; int ch_sysdev; int /*<<< orphan*/ * ch_ires; struct scc_mode* ch_mode; int /*<<< orphan*/  ch_icookie; int /*<<< orphan*/  ch_rlist; int /*<<< orphan*/  ch_rres; } ;
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_SCC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int FUNC0 (struct scc_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scc_softc*,struct scc_chan*) ; 
 int SCC_NMODES ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_softc*,struct scc_softc*,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct scc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct scc_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct scc_softc*) ; 
 void* FUNC18 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct resource_list_entry* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * scc_bfe_intr ; 

int
FUNC30(device_t dev, u_int ipc)
{
	struct resource_list_entry *rle;
	struct scc_chan *ch;
	struct scc_class *cl;
	struct scc_mode *m;
	struct scc_softc *sc, *sc0;
	const char *sep;
	bus_space_handle_t bh;
	rman_res_t base, size, start, sz;
	int c, error, mode, sysdev;

	/*
	 * The sc_class field defines the type of SCC we're going to work
	 * with and thus the size of the softc. Replace the generic softc
	 * with one that matches the SCC now that we're certain we handle
	 * the device.
	 */
	sc0 = FUNC12(dev);
	cl = sc0->sc_class;
	if (cl->size > sizeof(*sc)) {
		sc = FUNC18(cl->size, M_SCC, M_WAITOK|M_ZERO);
		FUNC4(sc0, sc, sizeof(*sc));
		FUNC17(dev, sc);
	} else
		sc = sc0;

	size = FUNC3(cl->cl_range) << sc->sc_bas.regshft;

	FUNC19(&sc->sc_hwmtx, "scc_hwmtx", NULL, MTX_SPIN);

	/*
	 * Re-allocate. We expect that the softc contains the information
	 * collected by scc_bfe_probe() intact.
	 */
	sc->sc_rres = FUNC6(dev, sc->sc_rtype,
	    &sc->sc_rrid, cl->cl_channels * size, RF_ACTIVE);
	if (sc->sc_rres == NULL)
		return (ENXIO);
	sc->sc_bas.bsh = FUNC24(sc->sc_rres);
	sc->sc_bas.bst = FUNC25(sc->sc_rres);

	/*
	 * Allocate interrupt resources. There may be a different interrupt
	 * per channel. We allocate them all...
	 */
	sc->sc_chan = FUNC18(sizeof(struct scc_chan) * cl->cl_channels,
	    M_SCC, M_WAITOK | M_ZERO);
	for (c = 0; c < cl->cl_channels; c++) {
		ch = &sc->sc_chan[c];
		/*
		 * XXX temporary hack. If we have more than 1 interrupt
		 * per channel, allocate the first for the channel. At
		 * this time only the macio bus front-end has more than
		 * 1 interrupt per channel and we don't use the 2nd and
		 * 3rd, because we don't support DMA yet.
		 */
		ch->ch_irid = c * ipc;
		ch->ch_ires = FUNC5(dev, SYS_RES_IRQ,
		    &ch->ch_irid, RF_ACTIVE | RF_SHAREABLE);
		if (ipc == 0)
			break;
	}

	/*
	 * Create the control structures for our children. Probe devices
	 * and query them to see if we can reset the hardware.
	 */
	sysdev = 0;
	base = FUNC27(sc->sc_rres);
	sz = (size != 0) ? size : FUNC26(sc->sc_rres);
	start = base + ((cl->cl_range < 0) ? size * (cl->cl_channels - 1) : 0);
	for (c = 0; c < cl->cl_channels; c++) {
		ch = &sc->sc_chan[c];
		FUNC23(&ch->ch_rlist);
		ch->ch_nr = c + 1;

		if (!FUNC1(sc, ch))
			goto next;

		ch->ch_enabled = 1;
		FUNC21(&ch->ch_rlist, sc->sc_rtype, 0, start,
		    start + sz - 1, sz);
		rle = FUNC22(&ch->ch_rlist, sc->sc_rtype, 0);
		rle->res = &ch->ch_rres;
		FUNC9(FUNC25(sc->sc_rres),
		    FUNC24(sc->sc_rres), start - base, sz, &bh);
		FUNC28(rle->res, bh);
		FUNC29(rle->res, FUNC25(sc->sc_rres));

		FUNC21(&ch->ch_rlist, SYS_RES_IRQ, 0, c, c, 1);
		rle = FUNC22(&ch->ch_rlist, SYS_RES_IRQ, 0);
		rle->res = (ch->ch_ires != NULL) ? ch->ch_ires :
			    sc->sc_chan[0].ch_ires;

		for (mode = 0; mode < SCC_NMODES; mode++) {
			m = &ch->ch_mode[mode];
			m->m_chan = ch;
			m->m_mode = 1U << mode;
			if ((cl->cl_modes & m->m_mode) == 0 || ch->ch_sysdev)
				continue;
			m->m_dev = FUNC10(dev, NULL, -1);
			FUNC16(m->m_dev, (void *)m);
			error = FUNC15(dev, m->m_dev);
			if (!error) {
				m->m_probed = 1;
				m->m_sysdev = FUNC2(m->m_dev) ? 1 : 0;
				ch->ch_sysdev |= m->m_sysdev;
			}
		}

	 next:
		start += (cl->cl_range < 0) ? -size : size;
		sysdev |= ch->ch_sysdev;
	}

	/*
	 * Have the hardware driver initialize the hardware. Tell it
	 * whether or not a hardware reset should be performed.
	 */
	if (bootverbose) {
		FUNC14(dev, "%sresetting hardware\n",
		    (sysdev) ? "not " : "");
	}
	error = FUNC0(sc, !sysdev);
	if (error)
		goto fail;

	/*
	 * Setup our interrupt handler. Make it FAST under the assumption
	 * that our children's are fast as well. We make it MPSAFE as soon
	 * as a child sets up a MPSAFE interrupt handler.
	 * Of course, if we can't setup a fast handler, we make it MPSAFE
	 * right away.
	 */
	for (c = 0; c < cl->cl_channels; c++) {
		ch = &sc->sc_chan[c];
		if (ch->ch_ires == NULL)
			continue;
		error = FUNC8(dev, ch->ch_ires,
		    INTR_TYPE_TTY, scc_bfe_intr, NULL, sc,
		    &ch->ch_icookie);
		if (error) {
			error = FUNC8(dev, ch->ch_ires,
			    INTR_TYPE_TTY | INTR_MPSAFE, NULL,
			    (driver_intr_t *)scc_bfe_intr, sc, &ch->ch_icookie);
		} else
			sc->sc_fastintr = 1;

		if (error) {
			FUNC14(dev, "could not activate interrupt\n");
			FUNC7(dev, SYS_RES_IRQ, ch->ch_irid,
			    ch->ch_ires);
			ch->ch_ires = NULL;
		}
	}
	sc->sc_polled = 1;
	for (c = 0; c < cl->cl_channels; c++) {
		if (sc->sc_chan[0].ch_ires != NULL)
			sc->sc_polled = 0;
	}

	/*
	 * Attach all child devices that were probed successfully.
	 */
	for (c = 0; c < cl->cl_channels; c++) {
		ch = &sc->sc_chan[c];
		for (mode = 0; mode < SCC_NMODES; mode++) {
			m = &ch->ch_mode[mode];
			if (!m->m_probed)
				continue;
			error = FUNC11(m->m_dev);
			if (error)
				continue;
			m->m_attached = 1;
		}
	}

	if (bootverbose && (sc->sc_fastintr || sc->sc_polled)) {
		sep = "";
		FUNC13(dev);
		if (sc->sc_fastintr) {
			FUNC20("%sfast interrupt", sep);
			sep = ", ";
		}
		if (sc->sc_polled) {
			FUNC20("%spolled mode", sep);
			sep = ", ";
		}
		FUNC20("\n");
	}

	return (0);

 fail:
	for (c = 0; c < cl->cl_channels; c++) {
		ch = &sc->sc_chan[c];
		if (ch->ch_ires == NULL)
			continue;
		FUNC7(dev, SYS_RES_IRQ, ch->ch_irid,
		    ch->ch_ires);
	}
	FUNC7(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);
	return (error);
}