#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct port_info {struct port_info* vi; int /*<<< orphan*/  pi_lock; scalar_t__ dev; int /*<<< orphan*/  viid; } ;
struct memwin {int /*<<< orphan*/  mw_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  atid_lock; int /*<<< orphan*/  ftid_cv; int /*<<< orphan*/  ftid_lock; struct port_info* tid_tab; struct port_info* hpftid_tab; struct port_info* ftid_tab; } ;
struct TYPE_5__ {struct port_info* tls_rx_ports; } ;
struct TYPE_4__ {struct port_info* eqmap; struct port_info* iqmap; struct port_info* ctrlq; struct port_info* txq; struct port_info* rxq; struct port_info* nm_txq; struct port_info* nm_rxq; struct port_info* ofld_rxq; struct port_info* ofld_txq; } ;
struct adapter {int flags; int intr_count; scalar_t__ intr_type; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  sfl_lock; struct memwin* memwin; int /*<<< orphan*/ * policy; int /*<<< orphan*/  policy_lock; int /*<<< orphan*/  ifp_lock; TYPE_3__ tids; int /*<<< orphan*/  sfl_callout; TYPE_2__ tt; TYPE_1__ sge; struct port_info* irq; scalar_t__ key_map; scalar_t__ smt; scalar_t__ l2t; scalar_t__ msix_res; int /*<<< orphan*/  msix_rid; scalar_t__ udbs_res; int /*<<< orphan*/  udbs_rid; scalar_t__ regs_res; int /*<<< orphan*/  regs_rid; int /*<<< orphan*/  mbox; int /*<<< orphan*/  pf; struct port_info** port; int /*<<< orphan*/ * cdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CHK_MBOX_ACCESS ; 
 int FULL_INIT_DONE ; 
 int FW_OK ; 
 scalar_t__ INTR_MSI ; 
 scalar_t__ INTR_MSIX ; 
 int IS_VF ; 
 int MAX_NPORTS ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int NUM_MEMWIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  adapter ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC25 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC26 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC27 (struct adapter*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC31 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct adapter*) ; 
 int /*<<< orphan*/  t4_list ; 
 int /*<<< orphan*/  t4_list_lock ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 

int
FUNC35(device_t dev)
{
	struct adapter *sc;
	struct port_info *pi;
	int i, rc;

	sc = FUNC10(dev);

	if (sc->cdev) {
		FUNC7(sc->cdev);
		sc->cdev = NULL;
	}

	FUNC21(&t4_list_lock);
	FUNC0(&t4_list, sc, adapter, link);
	FUNC22(&t4_list_lock);

	sc->flags &= ~CHK_MBOX_ACCESS;
	if (sc->flags & FULL_INIT_DONE) {
		if (!(sc->flags & IS_VF))
			FUNC33(sc);
	}

	if (FUNC11(dev)) {
		rc = FUNC2(dev);
		if (rc) {
			FUNC12(dev,
			    "failed to detach child devices: %d\n", rc);
			return (rc);
		}
	}

	for (i = 0; i < sc->intr_count; i++)
		FUNC27(sc, &sc->irq[i]);

	if ((sc->flags & (IS_VF | FW_OK)) == FW_OK)
		FUNC30(sc);

	for (i = 0; i < MAX_NPORTS; i++) {
		pi = sc->port[i];
		if (pi) {
			FUNC31(sc, sc->mbox, sc->pf, 0, pi->vi[0].viid);
			if (pi->dev)
				FUNC8(dev, pi->dev);

			FUNC16(&pi->pi_lock);
			FUNC13(pi->vi, M_CXGBE);
			FUNC13(pi, M_CXGBE);
		}
	}

	FUNC9(dev);

	if (sc->flags & FULL_INIT_DONE)
		FUNC1(sc);

	if ((sc->flags & (IS_VF | FW_OK)) == FW_OK)
		FUNC32(sc, sc->mbox);

	if (sc->intr_type == INTR_MSI || sc->intr_type == INTR_MSIX)
		FUNC18(dev);

	if (sc->regs_res)
		FUNC3(dev, SYS_RES_MEMORY, sc->regs_rid,
		    sc->regs_res);

	if (sc->udbs_res)
		FUNC3(dev, SYS_RES_MEMORY, sc->udbs_rid,
		    sc->udbs_res);

	if (sc->msix_res)
		FUNC3(dev, SYS_RES_MEMORY, sc->msix_rid,
		    sc->msix_res);

	if (sc->l2t)
		FUNC28(sc->l2t);
	if (sc->smt)
		FUNC29(sc->smt);
	FUNC25(sc);
#ifdef RATELIMIT
	t4_free_etid_table(sc);
#endif
	if (sc->key_map)
		FUNC34(sc->key_map);
#ifdef INET6
	t4_destroy_clip_table(sc);
#endif

#if defined(TCP_OFFLOAD) || defined(RATELIMIT)
	free(sc->sge.ofld_txq, M_CXGBE);
#endif
#ifdef TCP_OFFLOAD
	free(sc->sge.ofld_rxq, M_CXGBE);
#endif
#ifdef DEV_NETMAP
	free(sc->sge.nm_rxq, M_CXGBE);
	free(sc->sge.nm_txq, M_CXGBE);
#endif
	FUNC13(sc->irq, M_CXGBE);
	FUNC13(sc->sge.rxq, M_CXGBE);
	FUNC13(sc->sge.txq, M_CXGBE);
	FUNC13(sc->sge.ctrlq, M_CXGBE);
	FUNC13(sc->sge.iqmap, M_CXGBE);
	FUNC13(sc->sge.eqmap, M_CXGBE);
	FUNC13(sc->tids.ftid_tab, M_CXGBE);
	FUNC13(sc->tids.hpftid_tab, M_CXGBE);
	FUNC14(&sc->tids);
	FUNC13(sc->tids.tid_tab, M_CXGBE);
	FUNC13(sc->tt.tls_rx_ports, M_CXGBE);
	FUNC24(sc);

	FUNC5(&sc->sfl_callout);
	if (FUNC17(&sc->tids.ftid_lock)) {
		FUNC16(&sc->tids.ftid_lock);
		FUNC6(&sc->tids.ftid_cv);
	}
	if (FUNC17(&sc->tids.atid_lock))
		FUNC16(&sc->tids.atid_lock);
	if (FUNC17(&sc->ifp_lock))
		FUNC16(&sc->ifp_lock);

	if (FUNC20(&sc->policy_lock)) {
		FUNC19(&sc->policy_lock);
#ifdef TCP_OFFLOAD
		if (sc->policy != NULL)
			free_offload_policy(sc->policy);
#endif
	}

	for (i = 0; i < NUM_MEMWIN; i++) {
		struct memwin *mw = &sc->memwin[i];

		if (FUNC20(&mw->mw_lock))
			FUNC19(&mw->mw_lock);
	}

	FUNC16(&sc->sfl_lock);
	FUNC16(&sc->reg_lock);
	FUNC16(&sc->sc_lock);

	FUNC4(sc, sizeof(*sc));

	return (0);
}