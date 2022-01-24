#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_26__ {int rq_frag_size; int /*<<< orphan*/  bmbx_lock; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  bsmbx; int /*<<< orphan*/  ifp; void* vlan_detach; void* vlan_attach; int /*<<< orphan*/  timer; struct TYPE_26__* next; int /*<<< orphan*/  promisc; int /*<<< orphan*/  flow_control; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  CALLOUT_MPSAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_FIRST ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCE_DEFAULT_FLOW_CONTROL ; 
 int /*<<< orphan*/  OCE_DEFAULT_PROMISCUOUS ; 
 int /*<<< orphan*/  OCE_RX_RING_SIZE ; 
 int /*<<< orphan*/  OCE_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  oce_add_vlan ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  oce_del_vlan ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  oce_local_timer ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int oce_rq_buf_size ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 TYPE_1__* softc_head ; 
 TYPE_1__* softc_tail ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	POCE_SOFTC sc;
	int rc = 0;

	sc = FUNC7(dev);

	rc = FUNC17(sc);
	if (rc)
		return rc;

	sc->tx_ring_size = OCE_TX_RING_SIZE;
	sc->rx_ring_size = OCE_RX_RING_SIZE;
	/* receive fragment size should be multiple of 2K */
	sc->rq_frag_size = ((oce_rq_buf_size / 2048) * 2048);
	sc->flow_control = OCE_DEFAULT_FLOW_CONTROL;
	sc->promisc	 = OCE_DEFAULT_PROMISCUOUS;

	FUNC2(&sc->bmbx_lock, "Mailbox_lock");
	FUNC2(&sc->dev_lock,  "Device_lock");

	/* initialise the hardware */
	rc = FUNC15(sc);
	if (rc)
		goto pci_res_free;

	FUNC24(sc);

	FUNC14(sc);

	FUNC28(sc);	

	rc = FUNC25(sc);
	if (rc)
		goto mbox_free;

	rc = FUNC22(sc);
	if (rc)
		goto intr_free;

	rc = FUNC11(sc);
	if (rc)
		goto queues_free;

#if defined(INET6) || defined(INET)
	rc = oce_init_lro(sc);
	if (rc)
		goto ifp_free;
#endif

	rc = FUNC19(sc);
	if (rc)
		goto lro_free;

	sc->vlan_attach = FUNC1(vlan_config,
				oce_add_vlan, sc, EVENTHANDLER_PRI_FIRST);
	sc->vlan_detach = FUNC1(vlan_unconfig,
				oce_del_vlan, sc, EVENTHANDLER_PRI_FIRST);

	rc = FUNC27(sc);
	if (rc)
		goto vlan_free;

	FUNC10(sc);

	FUNC5(&sc->timer, CALLOUT_MPSAFE);
	rc = FUNC6(&sc->timer, 2 * hz, oce_local_timer, sc);
	if (rc)
		goto stats_free;

	sc->next =NULL;
	if (softc_tail != NULL) {
	  softc_tail->next = sc;
	} else {
	  softc_head = sc;
	}
	softc_tail = sc;

	return 0;

stats_free:
	FUNC4(&sc->timer);
	FUNC26(sc);
vlan_free:
	if (sc->vlan_attach)
		FUNC0(vlan_config, sc->vlan_attach);
	if (sc->vlan_detach)
		FUNC0(vlan_unconfig, sc->vlan_detach);
	FUNC16(sc);
lro_free:
#if defined(INET6) || defined(INET)
	oce_free_lro(sc);
ifp_free:
#endif
	FUNC8(sc->ifp);
	FUNC9(sc->ifp);
queues_free:
	FUNC23(sc);
intr_free:
	FUNC21(sc);
mbox_free:
	FUNC12(sc, &sc->bsmbx);
pci_res_free:
	FUNC18(sc);
	FUNC3(&sc->dev_lock);
	FUNC3(&sc->bmbx_lock);
	return rc;

}