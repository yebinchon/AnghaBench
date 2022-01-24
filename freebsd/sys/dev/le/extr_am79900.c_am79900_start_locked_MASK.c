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
typedef  int /*<<< orphan*/  tmd ;
struct mbuf {int dummy; } ;
struct letmd {scalar_t__ tmd3; scalar_t__ tmd2; int /*<<< orphan*/  tmd1; } ;
struct lance_softc {int sc_last_td; int sc_no_td; int sc_ntbuf; int sc_flags; int sc_wdog_timer; int /*<<< orphan*/  (* sc_wrcsr ) (struct lance_softc*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* sc_copytodesc ) (struct lance_softc*,struct letmd*,int,int) ;int /*<<< orphan*/  (* sc_copyfromdesc ) (struct lance_softc*,struct letmd*,int,int) ;struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int ETHERMTU ; 
 int ETHER_HDR_LEN ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int LE_C0_INEA ; 
 int LE_C0_TDMD ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int LE_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lance_softc*,int /*<<< orphan*/ ) ; 
 int LE_T1_ENP ; 
 int LE_T1_ONES ; 
 int LE_T1_OWN ; 
 int LE_T1_STP ; 
 int /*<<< orphan*/  FUNC6 (struct lance_softc*,int) ; 
 int FUNC7 (struct lance_softc*,int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC8 (struct lance_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,char*,int,...) ; 
 int FUNC10 (struct lance_softc*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct lance_softc*,struct letmd*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct lance_softc*,struct letmd*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct lance_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC14(struct lance_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	struct letmd tmd;
	struct mbuf *m;
	int bix, enq, len, rp;

	FUNC5(sc, MA_OWNED);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	bix = sc->sc_last_td;
	enq = 0;

	for (; sc->sc_no_td < sc->sc_ntbuf &&
	    !FUNC2(&ifp->if_snd);) {
		rp = FUNC7(sc, bix);
		(*sc->sc_copyfromdesc)(sc, &tmd, rp, sizeof(tmd));

		if (FUNC4(tmd.tmd1) & LE_T1_OWN) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			FUNC9(ifp,
			    "missing buffer, no_td = %d, last_td = %d\n",
			    sc->sc_no_td, sc->sc_last_td);
		}

		FUNC1(&ifp->if_snd, m);
		if (m == NULL)
			break;

		/*
		 * If BPF is listening on this interface, let it see the packet
		 * before we commit it to the wire.
		 */
		FUNC0(ifp, m);

		/*
		 * Copy the mbuf chain into the transmit buffer.
		 */
		len = FUNC10(sc, FUNC6(sc, bix), m);

#ifdef LEDEBUG
		if (len > ETHERMTU + ETHER_HDR_LEN)
			if_printf(ifp, "packet length %d\n", len);
#endif

		/*
		 * Init transmit registers, and set transmit start flag.
		 */
		tmd.tmd1 = FUNC3(LE_T1_OWN | LE_T1_STP | LE_T1_ENP |
		    LE_T1_ONES | (-len & 0xfff));
		tmd.tmd2 = 0;
		tmd.tmd3 = 0;

		(*sc->sc_copytodesc)(sc, &tmd, rp, sizeof(tmd));

#ifdef LEDEBUG
		if (sc->sc_flags & LE_DEBUG)
			am79900_xmit_print(sc, bix);
#endif

		(*sc->sc_wrcsr)(sc, LE_CSR0, LE_C0_INEA | LE_C0_TDMD);
		enq++;

		if (++bix == sc->sc_ntbuf)
			bix = 0;

		if (++sc->sc_no_td == sc->sc_ntbuf) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}
	}

	sc->sc_last_td = bix;

	if (enq > 0)
		sc->sc_wdog_timer = 5;
}