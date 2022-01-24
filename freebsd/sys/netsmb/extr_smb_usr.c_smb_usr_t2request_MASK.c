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
struct smbioc_t2rq {int ioc_setupcnt; int ioc_rparamcnt; int ioc_rdatacnt; int /*<<< orphan*/  ioc_rdata; int /*<<< orphan*/  ioc_rparam; int /*<<< orphan*/  ioc_tdata; int /*<<< orphan*/  ioc_tdatacnt; int /*<<< orphan*/  ioc_tparam; int /*<<< orphan*/  ioc_tparamcnt; scalar_t__ ioc_name; int /*<<< orphan*/ * ioc_setup; } ;
struct mdchain {scalar_t__ md_top; } ;
struct smb_t2rq {int t2_setupcount; int t2_maxpcount; int t2_maxdcount; int /*<<< orphan*/ * t_name; struct mdchain t2_rdata; struct mdchain t2_rparam; int /*<<< orphan*/  t2_tdata; int /*<<< orphan*/  t2_tparam; scalar_t__ t2_maxscount; int /*<<< orphan*/ * t2_setupdata; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MB_MUSER ; 
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_t2rq*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 struct smb_t2rq* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mdchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_t2rq*) ; 
 int FUNC9 (struct smb_t2rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*) ; 
 int FUNC10 (struct smb_t2rq*) ; 

int
FUNC11(struct smb_share *ssp, struct smbioc_t2rq *dp,
	struct smb_cred *scred)
{
	struct smb_t2rq *t2p;
	struct mdchain *mdp;
	int error, len;

	if (dp->ioc_setupcnt > 3)
		return EINVAL;
	t2p = FUNC3(sizeof(struct smb_t2rq), M_SMBTEMP, M_WAITOK);
	error = FUNC9(t2p, FUNC0(ssp), dp->ioc_setup[0], scred);
	if (error) {
		FUNC1(t2p, M_SMBTEMP);
		return error;
	}
	len = t2p->t2_setupcount = dp->ioc_setupcnt;
	if (len > 1)
		t2p->t2_setupdata = dp->ioc_setup; 
	if (dp->ioc_name) {
		t2p->t_name = FUNC6(dp->ioc_name, 128);
		if (t2p->t_name == NULL) {
			error = ENOMEM;
			goto bad;
		}
	}
	t2p->t2_maxscount = 0;
	t2p->t2_maxpcount = dp->ioc_rparamcnt;
	t2p->t2_maxdcount = dp->ioc_rdatacnt;
	error = FUNC5(&t2p->t2_tparam, dp->ioc_tparamcnt, dp->ioc_tparam);
	if (error)
		goto bad;
	error = FUNC5(&t2p->t2_tdata, dp->ioc_tdatacnt, dp->ioc_tdata);
	if (error)
		goto bad;
	error = FUNC10(t2p);
	if (error)
		goto bad;
	mdp = &t2p->t2_rparam;
	if (mdp->md_top) {
		len = FUNC2(mdp->md_top);
		if (len > dp->ioc_rparamcnt) {
			error = EMSGSIZE;
			goto bad;
		}
		dp->ioc_rparamcnt = len;
		error = FUNC4(mdp, dp->ioc_rparam, len, MB_MUSER);
		if (error)
			goto bad;
	} else
		dp->ioc_rparamcnt = 0;
	mdp = &t2p->t2_rdata;
	if (mdp->md_top) {
		len = FUNC2(mdp->md_top);
		if (len > dp->ioc_rdatacnt) {
			error = EMSGSIZE;
			goto bad;
		}
		dp->ioc_rdatacnt = len;
		error = FUNC4(mdp, dp->ioc_rdata, len, MB_MUSER);
	} else
		dp->ioc_rdatacnt = 0;
bad:
	if (t2p->t_name)
		FUNC7(t2p->t_name);
	FUNC8(t2p);
	FUNC1(t2p, M_SMBTEMP);
	return error;
}