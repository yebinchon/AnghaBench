#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ndis_softc {scalar_t__ ndis_iftype; int ndis_maxpkts; int ndis_txpending; int ndis_oidcnt; scalar_t__* ndis_oids; int ndis_80211; scalar_t__ ndis_sc; int /*<<< orphan*/ * ndis_txpool; int /*<<< orphan*/  ndis_txarray; TYPE_2__* ndis_block; int /*<<< orphan*/  ndis_rxdpc; void* ndisusb_taskitem; void* ndisusb_xferdoneitem; void* ndis_inputitem; void* ndis_resetitem; void* ndis_startitem; void* ndis_tickitem; TYPE_1__* ndis_chars; int /*<<< orphan*/  ndis_dobj; int /*<<< orphan*/  ndis_rxqueue; int /*<<< orphan*/  ndis_stat_callout; int /*<<< orphan*/  ndisusb_xferdonelist; int /*<<< orphan*/  ndisusb_tasklist; int /*<<< orphan*/  ndis_shlist; int /*<<< orphan*/  ndisusb_xferdonelock; int /*<<< orphan*/  ndisusb_tasklock; int /*<<< orphan*/  ndis_rxlock; int /*<<< orphan*/  ndis_mtx; } ;
typedef  int /*<<< orphan*/  ndis_packet ;
typedef  int /*<<< orphan*/  driver_object ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  device_object ;
struct TYPE_5__ {int /*<<< orphan*/  nmb_deviceobj; int /*<<< orphan*/  nmb_statusdone_func; int /*<<< orphan*/  nmb_status_func; int /*<<< orphan*/  nmb_tdcond_func; int /*<<< orphan*/  nmb_ethrxdone_func; int /*<<< orphan*/  nmb_ethrxindicate_func; int /*<<< orphan*/  nmb_pktind_func; int /*<<< orphan*/  nmb_senddone_func; int /*<<< orphan*/ * nmb_rlist; } ;
struct TYPE_4__ {int /*<<< orphan*/  nmc_version_minor; int /*<<< orphan*/  nmc_version_major; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int NDIS_STATUS_SUCCESS ; 
 int NDIS_TXPKTS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 scalar_t__ OID_802_11_CONFIGURATION ; 
 int /*<<< orphan*/  OID_GEN_MAXIMUM_SEND_PACKETS ; 
 scalar_t__ PCIBus ; 
 scalar_t__ PCMCIABus ; 
 scalar_t__ PNPBus ; 
 int /*<<< orphan*/  PROTOCOL_RESERVED_SIZE_IN_PACKET ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct ndis_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct ndis_softc*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct ndis_softc*,scalar_t__**,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct ndis_softc*) ; 
 int FUNC22 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct ndis_softc*) ; 
 scalar_t__ FUNC24 (struct ndis_softc*) ; 
 int /*<<< orphan*/  ndis_linksts_done_wrap ; 
 int /*<<< orphan*/  ndis_linksts_wrap ; 
 int /*<<< orphan*/  ndis_rxeof_done_wrap ; 
 int /*<<< orphan*/  ndis_rxeof_eth_wrap ; 
 int /*<<< orphan*/  ndis_rxeof_wrap ; 
 int /*<<< orphan*/  ndis_rxeof_xfr_done_wrap ; 
 int /*<<< orphan*/  ndis_rxeof_xfr_wrap ; 
 int /*<<< orphan*/  ndis_txeof_wrap ; 
 scalar_t__ ndisusb_halt ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ,char*) ; 

int
FUNC27(device_t dev)
{
	struct ndis_softc	*sc;
	driver_object		*pdrv;
	device_object		*pdo;
	int			error = 0, len;
	int			i;

	sc = FUNC10(dev);

	FUNC14(&sc->ndis_mtx, FUNC9(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC4(&sc->ndis_rxlock);
	FUNC4(&sc->ndisusb_tasklock);
	FUNC4(&sc->ndisusb_xferdonelock);
	FUNC1(&sc->ndis_shlist);
	FUNC1(&sc->ndisusb_tasklist);
	FUNC1(&sc->ndisusb_xferdonelist);
	FUNC8(&sc->ndis_stat_callout, 1);
	FUNC13(&sc->ndis_rxqueue, INT_MAX);	/* XXXGL: sane maximum */

	/* Create sysctl registry nodes */
	FUNC17(sc);

	/* Find the PDO for this device instance. */

	if (sc->ndis_iftype == PCIBus)
		pdrv = FUNC26(0, "PCI Bus");
	else if (sc->ndis_iftype == PCMCIABus)
		pdrv = FUNC26(0, "PCCARD Bus");
	else
		pdrv = FUNC26(0, "USB Bus");
	pdo = FUNC25(pdrv, dev);

	/*
	 * Create a new functional device object for this
	 * device. This is what creates the miniport block
	 * for this device instance.
	 */

	if (FUNC6(sc->ndis_dobj, pdo) != STATUS_SUCCESS) {
		FUNC11(dev, "failed to create FDO!\n");
		error = ENXIO;
		goto fail;
	}

	/* Tell the user what version of the API the driver is using. */
	FUNC11(dev, "NDIS API version: %d.%d\n",
	    sc->ndis_chars->nmc_version_major,
	    sc->ndis_chars->nmc_version_minor);

	/* Do resource conversion. */
	if (sc->ndis_iftype == PCMCIABus || sc->ndis_iftype == PCIBus)
		FUNC16(sc);
	else
		sc->ndis_block->nmb_rlist = NULL;

	/* Install our RX and TX interrupt handlers. */
	sc->ndis_block->nmb_senddone_func = ndis_txeof_wrap;
	sc->ndis_block->nmb_pktind_func = ndis_rxeof_wrap;
	sc->ndis_block->nmb_ethrxindicate_func = ndis_rxeof_eth_wrap;
	sc->ndis_block->nmb_ethrxdone_func = ndis_rxeof_done_wrap;
	sc->ndis_block->nmb_tdcond_func = ndis_rxeof_xfr_done_wrap;

	/* Override the status handler so we can detect link changes. */
	sc->ndis_block->nmb_status_func = ndis_linksts_wrap;
	sc->ndis_block->nmb_statusdone_func = ndis_linksts_done_wrap;

	/* Set up work item handlers. */
	sc->ndis_tickitem = FUNC2(sc->ndis_block->nmb_deviceobj);
	sc->ndis_startitem = FUNC2(sc->ndis_block->nmb_deviceobj);
	sc->ndis_resetitem = FUNC2(sc->ndis_block->nmb_deviceobj);
	sc->ndis_inputitem = FUNC2(sc->ndis_block->nmb_deviceobj);
	sc->ndisusb_xferdoneitem =
	    FUNC2(sc->ndis_block->nmb_deviceobj);
	sc->ndisusb_taskitem =
	    FUNC2(sc->ndis_block->nmb_deviceobj);
	FUNC3(&sc->ndis_rxdpc, ndis_rxeof_xfr_wrap, sc->ndis_block);

	/* Call driver's init routine. */
	if (FUNC24(sc)) {
		FUNC11(dev, "init handler failed\n");
		error = ENXIO;
		goto fail;
	}

	/*
	 * Figure out how big to make the TX buffer pool.
	 */
	len = sizeof(sc->ndis_maxpkts);
	if (FUNC19(sc, OID_GEN_MAXIMUM_SEND_PACKETS,
		    &sc->ndis_maxpkts, &len)) {
		FUNC11(dev, "failed to get max TX packets\n");
		error = ENXIO;
		goto fail;
	}

	/*
	 * If this is a deserialized miniport, we don't have
	 * to honor the OID_GEN_MAXIMUM_SEND_PACKETS result.
	 */
	if (!FUNC5(sc->ndis_block))
		sc->ndis_maxpkts = NDIS_TXPKTS;

	/* Enforce some sanity, just in case. */

	if (sc->ndis_maxpkts == 0)
		sc->ndis_maxpkts = 10;

	sc->ndis_txarray = FUNC12(sizeof(ndis_packet *) *
	    sc->ndis_maxpkts, M_DEVBUF, M_NOWAIT|M_ZERO);

	/* Allocate a pool of ndis_packets for TX encapsulation. */

	FUNC7(&i, &sc->ndis_txpool,
	    sc->ndis_maxpkts, PROTOCOL_RESERVED_SIZE_IN_PACKET);

	if (i != NDIS_STATUS_SUCCESS) {
		sc->ndis_txpool = NULL;
		FUNC11(dev, "failed to allocate TX packet pool");
		error = ENOMEM;
		goto fail;
	}

	sc->ndis_txpending = sc->ndis_maxpkts;

	sc->ndis_oidcnt = 0;
	/* Get supported oid list. */
	FUNC20(sc, &sc->ndis_oids, &sc->ndis_oidcnt);

	/* If the NDIS module requested scatter/gather, init maps. */
	if (sc->ndis_sc)
		FUNC23(sc);

	/*
	 * See if the OID_802_11_CONFIGURATION OID is
	 * supported by this driver. If it is, then this an 802.11
	 * wireless driver, and we should set up media for wireless.
	 */
	for (i = 0; i < sc->ndis_oidcnt; i++)
		if (sc->ndis_oids[i] == OID_802_11_CONFIGURATION) {
			sc->ndis_80211 = 1;
			break;
		}

	if (sc->ndis_80211)
		error = FUNC15(sc);
	else
		error = FUNC22(sc);

fail:
	if (error) {
		FUNC18(dev);
		return (error);
	}

	if (sc->ndis_iftype == PNPBus && ndisusb_halt == 0)
		return (error);

	FUNC0(("attach done.\n"));
	/* We're done talking to the NIC for now; halt it. */
	FUNC21(sc);
	FUNC0(("halting done.\n"));

	return (error);
}