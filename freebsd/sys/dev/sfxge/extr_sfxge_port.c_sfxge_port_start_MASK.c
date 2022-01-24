#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_7__ {TYPE_2__* ifm_cur; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma_buf; } ;
struct sfxge_port {scalar_t__ init_state; TYPE_4__ mac_stats; int /*<<< orphan*/  stats_update_period_ms; } ;
struct sfxge_softc {int /*<<< orphan*/ * enp; TYPE_3__ media; struct sfxge_port port; struct ifnet* ifnet; } ;
struct ifnet {TYPE_1__* if_addr; int /*<<< orphan*/  if_mtu; } ;
struct epoch_tracker {int dummy; } ;
typedef  int /*<<< orphan*/  mac_addr ;
typedef  int /*<<< orphan*/  efx_nic_t ;
struct TYPE_6__ {int /*<<< orphan*/  ifm_media; } ;
struct TYPE_5__ {scalar_t__ ifa_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (struct epoch_tracker) ; 
 scalar_t__ SFXGE_PORT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_port*) ; 
 scalar_t__ SFXGE_PORT_STARTED ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct sfxge_softc*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct sfxge_softc*) ; 

int
FUNC22(struct sfxge_softc *sc)
{
	uint8_t mac_addr[ETHER_ADDR_LEN];
	struct epoch_tracker et;
	struct ifnet *ifp = sc->ifnet;
	struct sfxge_port *port;
	efx_nic_t *enp;
	size_t pdu;
	int rc;
	uint32_t phy_cap_mask;

	port = &sc->port;
	enp = sc->enp;

	FUNC5(port);

	FUNC1(port->init_state == SFXGE_PORT_INITIALIZED,
	    ("port not initialized"));

	/* Initialise the required filtering */
	if ((rc = FUNC9(enp)) != 0)
		goto fail_filter_init;

	/* Initialize the port object in the common code. */
	if ((rc = FUNC17(sc->enp)) != 0)
		goto fail;

	/* Set the SDU */
	pdu = FUNC0(ifp->if_mtu);
	if ((rc = FUNC13(enp, pdu)) != 0)
		goto fail2;

	if ((rc = FUNC12(enp, FUNC21(sc), B_TRUE))
	    != 0)
		goto fail3;

	/* Set the unicast address */
	FUNC3(et);
	FUNC7(FUNC2((struct sockaddr_dl *)ifp->if_addr->ifa_addr),
	      mac_addr, sizeof(mac_addr));
	FUNC4(et);
	if ((rc = FUNC10(enp, mac_addr)) != 0)
		goto fail4;

	FUNC18(sc);

	/* Update MAC stats by DMA every period */
	if ((rc = FUNC14(enp, &port->mac_stats.dma_buf,
					 port->stats_update_period_ms,
					 B_FALSE)) != 0)
		goto fail6;

	if ((rc = FUNC11(enp, B_FALSE)) != 0)
		goto fail8;

	if ((rc = FUNC20(sc, sc->media.ifm_cur->ifm_media,
				     &phy_cap_mask)) != 0)
		goto fail9;

	if ((rc = FUNC15(sc->enp, phy_cap_mask)) != 0)
		goto fail10;

	port->init_state = SFXGE_PORT_STARTED;

	/* Single poll in case there were missing initial events */
	FUNC6(port);
	FUNC19(sc, 0);

	return (0);

fail10:
fail9:
	(void)FUNC11(enp, B_TRUE);
fail8:
	(void)FUNC14(enp, &port->mac_stats.dma_buf, 0, B_FALSE);
fail6:
fail4:
fail3:

fail2:
	FUNC16(enp);
fail:
	FUNC8(enp);
fail_filter_init:
	FUNC6(port);

	return (rc);
}