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
struct scc_softc {int /*<<< orphan*/  sc_hwmtx; struct scc_chan* sc_chan; int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_rrid; int /*<<< orphan*/  sc_rtype; struct scc_class* sc_class; } ;
struct scc_mode {scalar_t__ m_attached; int /*<<< orphan*/  m_dev; } ;
struct scc_class {int cl_channels; } ;
struct scc_chan {int /*<<< orphan*/ * ch_ires; int /*<<< orphan*/  ch_irid; int /*<<< orphan*/  ch_icookie; struct scc_mode* ch_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_SCC ; 
 int SCC_NMODES ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct scc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(device_t dev)
{
	struct scc_chan *ch;
	struct scc_class *cl;
	struct scc_mode *m;
	struct scc_softc *sc;
	int chan, error, mode;

	sc = FUNC3(dev);
	cl = sc->sc_class;

	/* Detach our children. */
	error = 0;
	for (chan = 0; chan < cl->cl_channels; chan++) {
		ch = &sc->sc_chan[chan];
		for (mode = 0; mode < SCC_NMODES; mode++) {
			m = &ch->ch_mode[mode];
			if (!m->m_attached)
				continue;
			if (FUNC2(m->m_dev) != 0)
				error = ENXIO;
			else
				m->m_attached = 0;
		}
	}

	if (error)
		return (error);

	for (chan = 0; chan < cl->cl_channels; chan++) {
		ch = &sc->sc_chan[chan];
		if (ch->ch_ires == NULL)
			continue;
		FUNC1(dev, ch->ch_ires, ch->ch_icookie);
		FUNC0(dev, SYS_RES_IRQ, ch->ch_irid,
		    ch->ch_ires);
	}
	FUNC0(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);

	FUNC4(sc->sc_chan, M_SCC);

	FUNC5(&sc->sc_hwmtx);
	return (0);
}