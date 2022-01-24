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
typedef  int u_int8_t ;
typedef  scalar_t__ u_int16_t ;
struct smb_t2rq {int t2_flags; int /*<<< orphan*/  t2_rparam; int /*<<< orphan*/  t2_rdata; struct smb_rq* t2_rq; } ;
struct mdchain {int /*<<< orphan*/  md_top; } ;
struct smb_rq {struct mdchain sr_rp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_rq*) ; 
 int SMBT2_ALLRECV ; 
 int SMBT2_ALLSENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mdchain*,scalar_t__*) ; 
 int FUNC6 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct mdchain*) ; 
 int FUNC8 (struct smb_rq*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct smb_t2rq *t2p)
{
	struct mdchain *mdp;
	struct smb_rq *rqp = t2p->t2_rq;
	int error, totpgot, totdgot;
	u_int16_t totpcount, totdcount, pcount, poff, doff, pdisp, ddisp;
	u_int16_t tmp, bc, dcount;
	u_int8_t wc;

	error = FUNC8(rqp);
	if (error)
		return error;
	if ((t2p->t2_flags & SMBT2_ALLSENT) == 0) {
		/* 
		 * this is an interim response, ignore it.
		 */
		FUNC1(rqp);
		FUNC7(&rqp->sr_rp);
		FUNC2(rqp);
		return 0;
	}
	/*
	 * Now we have to get all subsequent responses. The CIFS specification
	 * says that they can be disordered which is weird.
	 * TODO: timo
	 */
	totpgot = totdgot = 0;
	totpcount = totdcount = 0xffff;
	mdp = &rqp->sr_rp;
	for (;;) {
		FUNC3(mdp->md_top);
		if ((error = FUNC6(mdp, &wc)) != 0)
			break;
		if (wc < 10) {
			error = ENOENT;
			break;
		}
		if ((error = FUNC5(mdp, &tmp)) != 0)
			break;
		if (totpcount > tmp)
			totpcount = tmp;
		FUNC5(mdp, &tmp);
		if (totdcount > tmp)
			totdcount = tmp;
		if ((error = FUNC5(mdp, &tmp)) != 0 || /* reserved */
		    (error = FUNC5(mdp, &pcount)) != 0 ||
		    (error = FUNC5(mdp, &poff)) != 0 ||
		    (error = FUNC5(mdp, &pdisp)) != 0)
			break;
		if (pcount != 0 && pdisp != totpgot) {
			FUNC0("Can't handle disordered parameters %d:%d\n",
			    pdisp, totpgot);
			error = EINVAL;
			break;
		}
		if ((error = FUNC5(mdp, &dcount)) != 0 ||
		    (error = FUNC5(mdp, &doff)) != 0 ||
		    (error = FUNC5(mdp, &ddisp)) != 0)
			break;
		if (dcount != 0 && ddisp != totdgot) {
			FUNC0("Can't handle disordered data\n");
			error = EINVAL;
			break;
		}
		FUNC6(mdp, &wc);
		FUNC6(mdp, NULL);
		tmp = wc;
		while (tmp--)
			FUNC4(mdp, NULL);
		if ((error = FUNC5(mdp, &bc)) != 0)
			break;
/*		tmp = SMB_HDRLEN + 1 + 10 * 2 + 2 * wc + 2;*/
		if (dcount) {
			error = FUNC9(mdp->md_top, doff, dcount,
			    &t2p->t2_rdata);
			if (error)
				break;
		}
		if (pcount) {
			error = FUNC9(mdp->md_top, poff, pcount,
			    &t2p->t2_rparam);
			if (error)
				break;
		}
		totpgot += pcount;
		totdgot += dcount;
		if (totpgot >= totpcount && totdgot >= totdcount) {
			error = 0;
			t2p->t2_flags |= SMBT2_ALLRECV;
			break;
		}
		/*
		 * We're done with this reply, look for the next one.
		 */
		FUNC1(rqp);
		FUNC7(&rqp->sr_rp);
		FUNC2(rqp);
		error = FUNC8(rqp);
		if (error)
			break;
	}
	return error;
}