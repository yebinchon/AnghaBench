#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct wrq_cookie {int dummy; } ;
struct TYPE_10__ {int pfvf_vld; int ovlan_vld; int ethtype; int vlan; int vnic; int dport; int sport; int /*<<< orphan*/  sip; int /*<<< orphan*/  dip; int /*<<< orphan*/  tos; int /*<<< orphan*/  proto; int /*<<< orphan*/  matchtype; int /*<<< orphan*/  iport; int /*<<< orphan*/  fcoe; int /*<<< orphan*/  macidx; int /*<<< orphan*/  vlan_vld; int /*<<< orphan*/  frag; } ;
struct TYPE_9__ {int pfvf_vld; int ovlan_vld; int ethtype; int vlan; int vnic; int dport; int sport; int /*<<< orphan*/  sip; int /*<<< orphan*/  dip; int /*<<< orphan*/  tos; int /*<<< orphan*/  proto; int /*<<< orphan*/  matchtype; int /*<<< orphan*/  iport; int /*<<< orphan*/  fcoe; int /*<<< orphan*/  macidx; int /*<<< orphan*/  vlan_vld; int /*<<< orphan*/  frag; } ;
struct TYPE_12__ {scalar_t__ action; scalar_t__ newvlan; int nat_dport; int nat_sport; int nat_seq_chk; int /*<<< orphan*/  nat_sip; int /*<<< orphan*/  nat_dip; scalar_t__ nat_mode; int /*<<< orphan*/  nat_flag_chk; int /*<<< orphan*/  swapmac; TYPE_3__ mask; TYPE_2__ val; scalar_t__ prio; int /*<<< orphan*/  eport; int /*<<< orphan*/  hitcnts; int /*<<< orphan*/  newsmac; int /*<<< orphan*/  newdmac; int /*<<< orphan*/  dirsteerhash; int /*<<< orphan*/  maskhash; int /*<<< orphan*/  dirsteer; int /*<<< orphan*/  rpttid; int /*<<< orphan*/  iq; scalar_t__ type; int /*<<< orphan*/  hash; } ;
struct t4_filter {size_t idx; TYPE_5__ fs; } ;
struct smt_entry {int dummy; } ;
struct l2t_entry {int /*<<< orphan*/  idx; } ;
struct fw_filter_wr {int dummy; } ;
struct fw_filter2_wr {int frag_to_ovlan_vldm; int natmode_to_ulp_type; void* natseqcheck; void* newfport; void* newlport; int /*<<< orphan*/  newfip; int /*<<< orphan*/  newlip; int /*<<< orphan*/  filter_type_swapmac; struct fw_filter2_wr* sma; void* fpm; void* fp; void* lpm; void* lp; int /*<<< orphan*/  fipm; int /*<<< orphan*/  fip; int /*<<< orphan*/  lipm; int /*<<< orphan*/  lip; void* ovlanm; void* ovlan; void* ivlanm; void* ivlan; int /*<<< orphan*/  ttypm; int /*<<< orphan*/  ttyp; int /*<<< orphan*/  ptclm; int /*<<< orphan*/  ptcl; void* maci_to_matchtypem; void* rx_chan_rx_rpl_iq; scalar_t__ smac_sel; void* ethtypem; void* ethtype; void* del_filter_to_l2tix; void* tid_to_iq; void* len16_pkd; void* op_pkd; } ;
struct filter_entry {int pending; int valid; int tid; TYPE_5__ fs; struct l2t_entry* l2te; struct smt_entry* smt; scalar_t__ locked; } ;
struct TYPE_14__ {size_t nhpftids; int hpftid_base; size_t nftids; int ftid_base; int /*<<< orphan*/  ftid_lock; int /*<<< orphan*/  ftid_cv; int /*<<< orphan*/  ftids_in_use; int /*<<< orphan*/  hpftids_in_use; struct filter_entry* ftid_tab; struct filter_entry* hpftid_tab; } ;
struct TYPE_8__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ctrlq; TYPE_1__ fwq; } ;
struct TYPE_11__ {scalar_t__ filter2_wr_support; } ;
struct adapter {TYPE_7__ tids; TYPE_6__ sge; TYPE_4__ params; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ FILTER_DROP ; 
 scalar_t__ FILTER_SWITCH ; 
 int /*<<< orphan*/  FW_FILTER2_WR ; 
 int /*<<< orphan*/  FW_FILTER_WR ; 
 int FUNC0 (struct fw_filter2_wr) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ULP_MODE_NONE ; 
 int /*<<< orphan*/  ULP_MODE_TCPDDP ; 
 scalar_t__ VLAN_INSERT ; 
 scalar_t__ VLAN_REMOVE ; 
 scalar_t__ VLAN_REWRITE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int) ; 
 int FUNC28 (int) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (scalar_t__) ; 
 int FUNC32 (int) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (scalar_t__) ; 
 int FUNC35 (int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int FUNC37 (int /*<<< orphan*/ ) ; 
 int FUNC38 (int) ; 
 int FUNC39 (int /*<<< orphan*/ ) ; 
 int FUNC40 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC43 (struct fw_filter2_wr*,int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,struct fw_filter2_wr*,struct wrq_cookie*) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC46 (int,int) ; 
 void* FUNC47 (int) ; 
 void* FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC52 (struct adapter*) ; 
 struct fw_filter2_wr* FUNC53 (int /*<<< orphan*/ *,int,struct wrq_cookie*) ; 

__attribute__((used)) static int
FUNC54(struct adapter *sc, struct t4_filter *t, struct l2t_entry *l2te,
    struct smt_entry *smt)
{
	struct filter_entry *f;
	struct fw_filter2_wr *fwr;
	u_int vnic_vld, vnic_vld_mask;
	struct wrq_cookie cookie;
	int i, rc, busy, locked;
	u_int tid;
	const int ntids = t->fs.type ? 4 : 1;

	FUNC1(!t->fs.hash);
	/* Already validated against fconf, iconf */
	FUNC1((t->fs.val.pfvf_vld & t->fs.val.ovlan_vld) == 0);
	FUNC1((t->fs.mask.pfvf_vld & t->fs.mask.ovlan_vld) == 0);

	if (FUNC52(sc) && t->fs.prio) {
		FUNC1(t->idx < sc->tids.nhpftids);
		f = &sc->tids.hpftid_tab[t->idx];
		tid = sc->tids.hpftid_base + t->idx;
	} else {
		FUNC1(t->idx < sc->tids.nftids);
		f = &sc->tids.ftid_tab[t->idx];
		tid = sc->tids.ftid_base + t->idx;
	}
	rc = busy = locked = 0;
	FUNC50(&sc->tids.ftid_lock);
	for (i = 0; i < ntids; i++) {
		busy += f[i].pending + f[i].valid;
		locked += f[i].locked;
	}
	if (locked > 0)
		rc = EPERM;
	else if (busy > 0)
		rc = EBUSY;
	else {
		int len16;

		if (sc->params.filter2_wr_support)
			len16 = FUNC46(sizeof(struct fw_filter2_wr), 16);
		else
			len16 = FUNC46(sizeof(struct fw_filter_wr), 16);
		fwr = FUNC53(&sc->sge.ctrlq[0], len16, &cookie);
		if (FUNC41(fwr == NULL))
			rc = ENOMEM;
		else {
			f->pending = 1;
			if (FUNC52(sc) && t->fs.prio)
				sc->tids.hpftids_in_use++;
			else
				sc->tids.ftids_in_use++;
		}
	}
	FUNC51(&sc->tids.ftid_lock);
	if (rc != 0)
		return (rc);

	/*
	 * Can't fail now.  A set-filter WR will definitely be sent.
	 */

	f->tid = tid;
	f->fs = t->fs;
	f->l2te = l2te;
	f->smt = smt;

	if (t->fs.val.pfvf_vld || t->fs.val.ovlan_vld)
		vnic_vld = 1;
	else
		vnic_vld = 0;
	if (t->fs.mask.pfvf_vld || t->fs.mask.ovlan_vld)
		vnic_vld_mask = 1;
	else
		vnic_vld_mask = 0;

	FUNC43(fwr, sizeof(*fwr));
	if (sc->params.filter2_wr_support)
		fwr->op_pkd = FUNC48(FUNC40(FW_FILTER2_WR));
	else
		fwr->op_pkd = FUNC48(FUNC40(FW_FILTER_WR));
	fwr->len16_pkd = FUNC48(FUNC0(*fwr));
	fwr->tid_to_iq =
	    FUNC48(FUNC38(f->tid) |
		FUNC34(f->fs.type) |
		FUNC26(0) |
		FUNC16(f->fs.iq));
	fwr->del_filter_to_l2tix =
	    FUNC48(FUNC33(f->fs.rpttid) |
		FUNC9(f->fs.action == FILTER_DROP) |
		FUNC6(f->fs.dirsteer) |
		FUNC23(f->fs.maskhash) |
		FUNC7(f->fs.dirsteerhash) |
		FUNC20(f->fs.action == FILTER_SWITCH) |
		FUNC8(f->fs.newdmac) |
		FUNC37(f->fs.newsmac) |
		FUNC15(f->fs.newvlan == VLAN_INSERT ||
		    f->fs.newvlan == VLAN_REWRITE) |
		FUNC32(f->fs.newvlan == VLAN_REMOVE ||
		    f->fs.newvlan == VLAN_REWRITE) |
		FUNC14(f->fs.hitcnts) |
		FUNC39(f->fs.eport) |
		FUNC31(f->fs.prio) |
		FUNC19(f->l2te ? f->l2te->idx : 0));
	fwr->ethtype = FUNC47(f->fs.val.ethtype);
	fwr->ethtypem = FUNC47(f->fs.mask.ethtype);
	fwr->frag_to_ovlan_vldm =
	    (FUNC12(f->fs.val.frag) |
		FUNC13(f->fs.mask.frag) |
		FUNC17(f->fs.val.vlan_vld) |
		FUNC27(vnic_vld) |
		FUNC18(f->fs.mask.vlan_vld) |
		FUNC28(vnic_vld_mask));
	fwr->smac_sel = 0;
	fwr->rx_chan_rx_rpl_iq = FUNC47(FUNC35(0) |
	    FUNC36(sc->sge.fwq.abs_id));
	fwr->maci_to_matchtypem =
	    FUNC48(FUNC21(f->fs.val.macidx) |
		FUNC22(f->fs.mask.macidx) |
		FUNC10(f->fs.val.fcoe) |
		FUNC11(f->fs.mask.fcoe) |
		FUNC29(f->fs.val.iport) |
		FUNC30(f->fs.mask.iport) |
		FUNC24(f->fs.val.matchtype) |
		FUNC25(f->fs.mask.matchtype));
	fwr->ptcl = f->fs.val.proto;
	fwr->ptclm = f->fs.mask.proto;
	fwr->ttyp = f->fs.val.tos;
	fwr->ttypm = f->fs.mask.tos;
	fwr->ivlan = FUNC47(f->fs.val.vlan);
	fwr->ivlanm = FUNC47(f->fs.mask.vlan);
	fwr->ovlan = FUNC47(f->fs.val.vnic);
	fwr->ovlanm = FUNC47(f->fs.mask.vnic);
	FUNC42(f->fs.val.dip, fwr->lip, sizeof (fwr->lip));
	FUNC42(f->fs.mask.dip, fwr->lipm, sizeof (fwr->lipm));
	FUNC42(f->fs.val.sip, fwr->fip, sizeof (fwr->fip));
	FUNC42(f->fs.mask.sip, fwr->fipm, sizeof (fwr->fipm));
	fwr->lp = FUNC47(f->fs.val.dport);
	fwr->lpm = FUNC47(f->fs.mask.dport);
	fwr->fp = FUNC47(f->fs.val.sport);
	fwr->fpm = FUNC47(f->fs.mask.sport);
	/* sma = 0 tells the fw to use SMAC_SEL for source MAC address */
	FUNC43(fwr->sma, sizeof (fwr->sma));
	if (sc->params.filter2_wr_support) {
		fwr->filter_type_swapmac =
		    FUNC4(f->fs.swapmac);
		fwr->natmode_to_ulp_type =
		    FUNC5(f->fs.nat_mode ?
			ULP_MODE_TCPDDP : ULP_MODE_NONE) |
		    FUNC2(f->fs.nat_flag_chk) |
		    FUNC3(f->fs.nat_mode);
		FUNC49(fwr->newlip, f->fs.nat_dip, sizeof(fwr->newlip));
		FUNC49(fwr->newfip, f->fs.nat_sip, sizeof(fwr->newfip));
		fwr->newlport = FUNC47(f->fs.nat_dport);
		fwr->newfport = FUNC47(f->fs.nat_sport);
		fwr->natseqcheck = FUNC48(f->fs.nat_seq_chk);
	}
	FUNC44(&sc->sge.ctrlq[0], fwr, &cookie);

	/* Wait for response. */
	FUNC50(&sc->tids.ftid_lock);
	for (;;) {
		if (f->pending == 0) {
			rc = f->valid ? 0 : EIO;
			break;
		}
		if (FUNC45(&sc->tids.ftid_cv, &sc->tids.ftid_lock) != 0) {
			rc = EINPROGRESS;
			break;
		}
	}
	FUNC51(&sc->tids.ftid_lock);
	return (rc);
}