#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smb_vc {int vc_txmax; int /*<<< orphan*/  vc_iod; } ;
struct mdchain {struct mbuf* md_top; } ;
struct TYPE_4__ {struct mbuf* mb_top; } ;
struct TYPE_3__ {struct mbuf* mb_top; } ;
struct smb_t2rq {int t2_maxpcount; int t2_maxdcount; int t2_maxscount; int t2_setupcount; int* t2_setupdata; int t2_fid; struct mdchain t2_rdata; struct mdchain t2_rparam; int /*<<< orphan*/  t2_flags; int /*<<< orphan*/ * t_name; struct smb_rq* t2_rq; int /*<<< orphan*/  t2_source; TYPE_2__ t2_tdata; TYPE_1__ t2_tparam; struct smb_cred* t2_cred; struct smb_vc* t2_vc; } ;
struct mbchain {int dummy; } ;
struct smb_rq {int sr_flags; int /*<<< orphan*/  sr_state; struct mbchain sr_rq; struct smb_t2rq* sr_t2; } ;
struct smb_cred {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  MB_MZERO ; 
 int /*<<< orphan*/  SMBIOD_EV_NEWRQ ; 
 int /*<<< orphan*/  SMBRQ_NOTSENT ; 
 int SMBR_MULTIPACKET ; 
 int SMBR_RESTART ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  SMBT2_ALLSENT ; 
 int /*<<< orphan*/  SMBT2_RESTART ; 
 int /*<<< orphan*/  SMBT2_SECONDARY ; 
 int /*<<< orphan*/  SMB_COM_TRANSACTION ; 
 int /*<<< orphan*/  SMB_COM_TRANSACTION2 ; 
 int /*<<< orphan*/  SMB_COM_TRANSACTION2_SECONDARY ; 
 int /*<<< orphan*/  SMB_COM_TRANSACTION_SECONDARY ; 
 int FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mdchain*) ; 
 int FUNC10 (struct mdchain*,int,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC11 (struct mdchain*,struct mbuf*) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_rq*) ; 
 int FUNC19 (struct smb_rq*) ; 
 int FUNC20 (struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC22 (struct smb_rq*) ; 
 int FUNC23 (struct smb_t2rq*) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC25(struct smb_t2rq *t2p)
{
	struct smb_vc *vcp = t2p->t2_vc;
	struct smb_cred *scred = t2p->t2_cred;
	struct mbchain *mbp;
	struct mdchain *mdp, mbparam, mbdata;
	struct mbuf *m;
	struct smb_rq *rqp;
	int totpcount, leftpcount, totdcount, leftdcount, len, txmax, i;
	int error, doff, poff, txdcount, txpcount, nmlen;

	m = t2p->t2_tparam.mb_top;
	if (m) {
		FUNC11(&mbparam, m);	/* do not free it! */
		totpcount = FUNC2(m);
		if (totpcount > 0xffff)		/* maxvalue for u_short */
			return EINVAL;
	} else
		totpcount = 0;
	m = t2p->t2_tdata.mb_top;
	if (m) {
		FUNC11(&mbdata, m);	/* do not free it! */
		totdcount =  FUNC2(m);
		if (totdcount > 0xffff)
			return EINVAL;
	} else
		totdcount = 0;
	leftdcount = totdcount;
	leftpcount = totpcount;
	txmax = vcp->vc_txmax;
	error = FUNC15(t2p->t2_source, t2p->t_name ?
	    SMB_COM_TRANSACTION : SMB_COM_TRANSACTION2, scred, &rqp);
	if (error)
		return error;
	rqp->sr_flags |= SMBR_MULTIPACKET;
	t2p->t2_rq = rqp;
	rqp->sr_t2 = t2p;
	mbp = &rqp->sr_rq;
	FUNC22(rqp);
	FUNC6(mbp, totpcount);
	FUNC6(mbp, totdcount);
	FUNC6(mbp, t2p->t2_maxpcount);
	FUNC6(mbp, t2p->t2_maxdcount);
	FUNC8(mbp, t2p->t2_maxscount);
	FUNC8(mbp, 0);			/* reserved */
	FUNC6(mbp, 0);			/* flags */
	FUNC7(mbp, 0);			/* Timeout */
	FUNC6(mbp, 0);			/* reserved 2 */
	len = FUNC3(mbp);
	/*
	 * now we have known packet size as
	 * ALIGN4(len + 5 * 2 + setupcount * 2 + 2 + strlen(name) + 1),
	 * and need to decide which parts should go into the first request
	 */
	nmlen = t2p->t_name ? FUNC24(t2p->t_name) : 0;
	len = FUNC0(len + 5 * 2 + t2p->t2_setupcount * 2 + 2 + nmlen + 1);
	if (len + leftpcount > txmax) {
		txpcount = FUNC12(leftpcount, txmax - len);
		poff = len;
		txdcount = 0;
		doff = 0;
	} else {
		txpcount = leftpcount;
		poff = txpcount ? len : 0;
		len = FUNC0(len + txpcount);
		txdcount = FUNC12(leftdcount, txmax - len);
		doff = txdcount ? len : 0;
	}
	leftpcount -= txpcount;
	leftdcount -= txdcount;
	FUNC6(mbp, txpcount);
	FUNC6(mbp, poff);
	FUNC6(mbp, txdcount);
	FUNC6(mbp, doff);
	FUNC8(mbp, t2p->t2_setupcount);
	FUNC8(mbp, 0);
	for (i = 0; i < t2p->t2_setupcount; i++)
		FUNC6(mbp, t2p->t2_setupdata[i]);
	FUNC21(rqp);
	FUNC17(rqp);
	/* TDUNICODE */
	if (t2p->t_name)
		FUNC5(mbp, t2p->t_name, nmlen, MB_MSYSTEM);
	FUNC8(mbp, 0);	/* terminating zero */
	len = FUNC3(mbp);
	if (txpcount) {
		FUNC5(mbp, NULL, FUNC0(len) - len, MB_MZERO);
		error = FUNC10(&mbparam, txpcount, &m);
		FUNC1("%d:%d:%d\n", error, txpcount, txmax);
		if (error)
			goto freerq;
		FUNC4(mbp, m);
	}
	len = FUNC3(mbp);
	if (txdcount) {
		FUNC5(mbp, NULL, FUNC0(len) - len, MB_MZERO);
		error = FUNC10(&mbdata, txdcount, &m);
		if (error)
			goto freerq;
		FUNC4(mbp, m);
	}
	FUNC16(rqp);	/* incredible, but thats it... */
	error = FUNC19(rqp);
	if (error)
		goto freerq;
	if (leftpcount == 0 && leftdcount == 0)
		t2p->t2_flags |= SMBT2_ALLSENT;
	error = FUNC23(t2p);
	if (error)
		goto bad;
	while (leftpcount || leftdcount) {
		t2p->t2_flags |= SMBT2_SECONDARY;
		error = FUNC20(rqp, t2p->t_name ? 
		    SMB_COM_TRANSACTION_SECONDARY : SMB_COM_TRANSACTION2_SECONDARY);
		if (error)
			goto bad;
		mbp = &rqp->sr_rq;
		FUNC22(rqp);
		FUNC6(mbp, totpcount);
		FUNC6(mbp, totdcount);
		len = FUNC3(mbp);
		/*
		 * now we have known packet size as
		 * ALIGN4(len + 7 * 2 + 2) for T2 request, and -2 for T one,
		 * and need to decide which parts should go into request
		 */
		len = FUNC0(len + 6 * 2 + 2);
		if (t2p->t_name == NULL)
			len += 2;
		if (len + leftpcount > txmax) {
			txpcount = FUNC12(leftpcount, txmax - len);
			poff = len;
			txdcount = 0;
			doff = 0;
		} else {
			txpcount = leftpcount;
			poff = txpcount ? len : 0;
			len = FUNC0(len + txpcount);
			txdcount = FUNC12(leftdcount, txmax - len);
			doff = txdcount ? len : 0;
		}
		FUNC6(mbp, txpcount);
		FUNC6(mbp, poff);
		FUNC6(mbp, totpcount - leftpcount);
		FUNC6(mbp, txdcount);
		FUNC6(mbp, doff);
		FUNC6(mbp, totdcount - leftdcount);
		leftpcount -= txpcount;
		leftdcount -= txdcount;
		if (t2p->t_name == NULL)
			FUNC6(mbp, t2p->t2_fid);
		FUNC21(rqp);
		FUNC17(rqp);
		FUNC8(mbp, 0);	/* name */
		len = FUNC3(mbp);
		if (txpcount) {
			FUNC5(mbp, NULL, FUNC0(len) - len, MB_MZERO);
			error = FUNC10(&mbparam, txpcount, &m);
			if (error)
				goto bad;
			FUNC4(mbp, m);
		}
		len = FUNC3(mbp);
		if (txdcount) {
			FUNC5(mbp, NULL, FUNC0(len) - len, MB_MZERO);
			error = FUNC10(&mbdata, txdcount, &m);
			if (error)
				goto bad;
			FUNC4(mbp, m);
		}
		FUNC16(rqp);
		rqp->sr_state = SMBRQ_NOTSENT;
		error = FUNC14(vcp->vc_iod, SMBIOD_EV_NEWRQ, NULL);
		if (error)
			goto bad;
	}	/* while left params or data */
	t2p->t2_flags |= SMBT2_ALLSENT;
	mdp = &t2p->t2_rdata;
	if (mdp->md_top) {
		FUNC2(mdp->md_top);
		FUNC11(mdp, mdp->md_top);
	}
	mdp = &t2p->t2_rparam;
	if (mdp->md_top) {
		FUNC2(mdp->md_top);
		FUNC11(mdp, mdp->md_top);
	}
bad:
	FUNC13(rqp);
freerq:
	FUNC18(rqp);
	if (error) {
		if (rqp->sr_flags & SMBR_RESTART)
			t2p->t2_flags |= SMBT2_RESTART;
		FUNC9(&t2p->t2_rparam);
		FUNC9(&t2p->t2_rdata);
	}
	return error;
}