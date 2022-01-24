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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct ip {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int rb_txddma; int rb_rxddma; } ;
struct hme_softc {int sc_burst; int /*<<< orphan*/  sc_tick_ch; scalar_t__ sc_wdog_timer; TYPE_1__ sc_rb; int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int ETHER_HDR_LEN ; 
 int /*<<< orphan*/  HME_ERXI_CFG ; 
 int /*<<< orphan*/  HME_ERXI_RING ; 
 int HME_ERX_CFG_CSUMSTART_MASK ; 
 int HME_ERX_CFG_CSUMSTART_SHIFT ; 
 int HME_ERX_CFG_DMAENABLE ; 
 int HME_ERX_CFG_FBO_MASK ; 
 int HME_ERX_CFG_FBO_SHIFT ; 
 int HME_ERX_CFG_RINGSIZE128 ; 
 int HME_ERX_CFG_RINGSIZE256 ; 
 int HME_ERX_CFG_RINGSIZE32 ; 
 int HME_ERX_CFG_RINGSIZE64 ; 
 int HME_ERX_CFG_RINGSIZEMSK ; 
 int FUNC4 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HME_ETXI_CFG ; 
 int /*<<< orphan*/  HME_ETXI_RING ; 
 int /*<<< orphan*/  HME_ETXI_RSIZE ; 
 int HME_ETX_CFG_DMAENABLE ; 
 int FUNC6 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HME_MACI_EXCNT ; 
 int /*<<< orphan*/  HME_MACI_FCCNT ; 
 int /*<<< orphan*/  HME_MACI_LTCNT ; 
 int /*<<< orphan*/  HME_MACI_MACADDR0 ; 
 int /*<<< orphan*/  HME_MACI_MACADDR1 ; 
 int /*<<< orphan*/  HME_MACI_MACADDR2 ; 
 int /*<<< orphan*/  HME_MACI_NCCNT ; 
 int /*<<< orphan*/  HME_MACI_RANDSEED ; 
 int /*<<< orphan*/  HME_MACI_RXCFG ; 
 int /*<<< orphan*/  HME_MACI_RXSIZE ; 
 int /*<<< orphan*/  HME_MACI_TXCFG ; 
 int /*<<< orphan*/  HME_MACI_TXSIZE ; 
 int /*<<< orphan*/  HME_MACI_XIF ; 
 int FUNC9 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int HME_MAC_RXCFG_DCRCS ; 
 int HME_MAC_RXCFG_ENABLE ; 
 int HME_MAC_TXCFG_DGIVEUP ; 
 int HME_MAC_TXCFG_ENABLE ; 
 int /*<<< orphan*/  FUNC10 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int HME_MAC_XIF_OE ; 
 int HME_MAX_FRAMESIZE ; 
 int /*<<< orphan*/  HME_MIFI_IMASK ; 
 int /*<<< orphan*/  FUNC11 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int HME_NRXDESC ; 
 int HME_NTXDESC ; 
 int HME_RXOFFS ; 
 int /*<<< orphan*/  HME_SEBI_CFG ; 
 int /*<<< orphan*/  HME_SEBI_IMASK ; 
 int HME_SEB_CFG_BURST16 ; 
 int HME_SEB_CFG_BURST32 ; 
 int HME_SEB_CFG_BURST64 ; 
 int /*<<< orphan*/  FUNC12 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int HME_SEB_STAT_ALL_ERRORS ; 
 int HME_SEB_STAT_HOSTTOTX ; 
 int HME_SEB_STAT_RCNTEXP ; 
 int HME_SEB_STAT_RXTOHOST ; 
 int HME_SEB_STAT_TXALL ; 
 int HME_SEB_STAT_TXPERR ; 
 int /*<<< orphan*/  FUNC13 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int* FUNC14 (struct ifnet*) ; 
 int /*<<< orphan*/  KTR_HME ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct hme_softc*) ; 
 scalar_t__ FUNC18 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct hme_softc*) ; 
 int /*<<< orphan*/  hme_tick ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

__attribute__((used)) static void
FUNC23(struct hme_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	u_int8_t *ea;
	u_int32_t n, v;

	FUNC8(sc, MA_OWNED);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	/*
	 * Initialization sequence. The numbered steps below correspond
	 * to the sequence outlined in section 6.3.5.1 in the Ethernet
	 * Channel Engine manual (part of the PCIO manual).
	 * See also the STP2002-STQ document from Sun Microsystems.
	 */

	/* step 1 & 2. Reset the Ethernet Channel */
	FUNC21(sc);

	/* Re-initialize the MIF */
	FUNC19(sc);

#if 0
	/* Mask all MIF interrupts, just in case */
	HME_MIF_WRITE_4(sc, HME_MIFI_IMASK, 0xffff);
#endif

	/* step 3. Setup data structures in host memory */
	if (FUNC18(sc) != 0) {
		FUNC16(sc->sc_dev, "out of buffers; init aborted.");
		return;
	}

	/* step 4. TX MAC registers & counters */
	FUNC10(sc, HME_MACI_NCCNT, 0);
	FUNC10(sc, HME_MACI_FCCNT, 0);
	FUNC10(sc, HME_MACI_EXCNT, 0);
	FUNC10(sc, HME_MACI_LTCNT, 0);
	FUNC10(sc, HME_MACI_TXSIZE, HME_MAX_FRAMESIZE);

	/* Load station MAC address */
	ea = FUNC14(ifp);
	FUNC10(sc, HME_MACI_MACADDR0, (ea[0] << 8) | ea[1]);
	FUNC10(sc, HME_MACI_MACADDR1, (ea[2] << 8) | ea[3]);
	FUNC10(sc, HME_MACI_MACADDR2, (ea[4] << 8) | ea[5]);

	/*
	 * Init seed for backoff
	 * (source suggested by manual: low 10 bits of MAC address)
	 */
	v = ((ea[4] << 8) | ea[5]) & 0x3fff;
	FUNC10(sc, HME_MACI_RANDSEED, v);

	/* Note: Accepting power-on default for other MAC registers here.. */

	/* step 5. RX MAC registers & counters */
	FUNC20(sc, 0);

	/* step 6 & 7. Program Descriptor Ring Base Addresses */
	FUNC7(sc, HME_ETXI_RING, sc->sc_rb.rb_txddma);
	/* Transmit Descriptor ring size: in increments of 16 */
	FUNC7(sc, HME_ETXI_RSIZE, HME_NTXDESC / 16 - 1);

	FUNC5(sc, HME_ERXI_RING, sc->sc_rb.rb_rxddma);
	FUNC10(sc, HME_MACI_RXSIZE, HME_MAX_FRAMESIZE);

	/* step 8. Global Configuration & Interrupt Mask */
	FUNC13(sc, HME_SEBI_IMASK,
	    ~(/*HME_SEB_STAT_GOTFRAME | HME_SEB_STAT_SENTFRAME |*/
		HME_SEB_STAT_HOSTTOTX |
		HME_SEB_STAT_RXTOHOST |
		HME_SEB_STAT_TXALL |
		HME_SEB_STAT_TXPERR |
		HME_SEB_STAT_RCNTEXP |
		HME_SEB_STAT_ALL_ERRORS ));

	switch (sc->sc_burst) {
	default:
		v = 0;
		break;
	case 16:
		v = HME_SEB_CFG_BURST16;
		break;
	case 32:
		v = HME_SEB_CFG_BURST32;
		break;
	case 64:
		v = HME_SEB_CFG_BURST64;
		break;
	}
	/*
	 * Blindly setting 64bit transfers may hang PCI cards(Cheerio?).
	 * Allowing 64bit transfers breaks TX checksum offload as well.
	 * Don't know this comes from hardware bug or driver's DMAing
	 * scheme.
	 *
	 * if (sc->sc_flags & HME_PCI == 0)
	 *	v |= HME_SEB_CFG_64BIT;
	 */
	FUNC13(sc, HME_SEBI_CFG, v);

	/* step 9. ETX Configuration: use mostly default values */

	/* Enable DMA */
	v = FUNC6(sc, HME_ETXI_CFG);
	v |= HME_ETX_CFG_DMAENABLE;
	FUNC7(sc, HME_ETXI_CFG, v);

	/* step 10. ERX Configuration */
	v = FUNC4(sc, HME_ERXI_CFG);

	/* Encode Receive Descriptor ring size: four possible values */
	v &= ~HME_ERX_CFG_RINGSIZEMSK;
	switch (HME_NRXDESC) {
	case 32:
		v |= HME_ERX_CFG_RINGSIZE32;
		break;
	case 64:
		v |= HME_ERX_CFG_RINGSIZE64;
		break;
	case 128:
		v |= HME_ERX_CFG_RINGSIZE128;
		break;
	case 256:
		v |= HME_ERX_CFG_RINGSIZE256;
		break;
	default:
		FUNC22("hme: invalid Receive Descriptor ring size\n");
		break;
	}

	/* Enable DMA, fix RX first byte offset. */
	v &= ~HME_ERX_CFG_FBO_MASK;
	v |= HME_ERX_CFG_DMAENABLE | (HME_RXOFFS << HME_ERX_CFG_FBO_SHIFT);
	/* RX TCP/UDP checksum offset */
	n = (ETHER_HDR_LEN + sizeof(struct ip)) / 2;
	n = (n << HME_ERX_CFG_CSUMSTART_SHIFT) & HME_ERX_CFG_CSUMSTART_MASK;
	v |= n;
	FUNC0(KTR_HME, "hme_init: programming ERX_CFG to %x", (u_int)v);
	FUNC5(sc, HME_ERXI_CFG, v);

	/* step 11. XIF Configuration */
	v = FUNC9(sc, HME_MACI_XIF);
	v |= HME_MAC_XIF_OE;
	FUNC0(KTR_HME, "hme_init: programming XIF to %x", (u_int)v);
	FUNC10(sc, HME_MACI_XIF, v);

	/* step 12. RX_MAC Configuration Register */
	v = FUNC9(sc, HME_MACI_RXCFG);
	v |= HME_MAC_RXCFG_ENABLE;
	v &= ~(HME_MAC_RXCFG_DCRCS);
	FUNC0(KTR_HME, "hme_init: programming RX_MAC to %x", (u_int)v);
	FUNC10(sc, HME_MACI_RXCFG, v);

	/* step 13. TX_MAC Configuration Register */
	v = FUNC9(sc, HME_MACI_TXCFG);
	v |= (HME_MAC_TXCFG_ENABLE | HME_MAC_TXCFG_DGIVEUP);
	FUNC0(KTR_HME, "hme_init: programming TX_MAC to %x", (u_int)v);
	FUNC10(sc, HME_MACI_TXCFG, v);

	/* step 14. Issue Transmit Pending command */

#ifdef HMEDEBUG
	/* Debug: double-check. */
	CTR4(KTR_HME, "hme_init: tx ring %#x, rsz %#x, rx ring %#x, "
	    "rxsize %#x", HME_ETX_READ_4(sc, HME_ETXI_RING),
	    HME_ETX_READ_4(sc, HME_ETXI_RSIZE),
	    HME_ERX_READ_4(sc, HME_ERXI_RING),
	    HME_MAC_READ_4(sc, HME_MACI_RXSIZE));
	CTR3(KTR_HME, "hme_init: intr mask %#x, erx cfg %#x, etx cfg %#x",
	    HME_SEB_READ_4(sc, HME_SEBI_IMASK),
	    HME_ERX_READ_4(sc, HME_ERXI_CFG),
	    HME_ETX_READ_4(sc, HME_ETXI_CFG));
	CTR2(KTR_HME, "hme_init: mac rxcfg %#x, maci txcfg %#x",
	    HME_MAC_READ_4(sc, HME_MACI_RXCFG),
	    HME_MAC_READ_4(sc, HME_MACI_TXCFG));
#endif

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	/* Set the current media. */
	FUNC17(sc);

	/* Start the one second timer. */
	sc->sc_wdog_timer = 0;
	FUNC15(&sc->sc_tick_ch, hz, hme_tick, sc);
}