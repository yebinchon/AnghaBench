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
struct smbnode {int n_flag; int /*<<< orphan*/  n_fid; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {scalar_t__ v_type; } ;
struct TYPE_3__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int NFLUSHWIRE ; 
 int NOPEN ; 
 TYPE_2__* FUNC0 (struct smbnode*) ; 
 int /*<<< orphan*/  SMB_COM_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*,struct mbchain**) ; 
 int FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 

__attribute__((used)) static int
FUNC11(struct smbnode *np, struct smb_cred *scred)
{
	struct smb_share *ssp = np->n_mount->sm_share;
	struct smb_rq *rqp;
	struct mbchain *mbp;
	int error;

	if ((np->n_flag & NOPEN) == 0 || !FUNC0(np) ||
	    FUNC0(np)->v_type != VREG)
		return 0; /* not a regular open file */
	error = FUNC3(FUNC1(ssp), SMB_COM_FLUSH, scred, &rqp);
	if (error)
		return (error);
	FUNC7(rqp, &mbp);
	FUNC10(rqp);
	FUNC2(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
	FUNC9(rqp);
	FUNC5(rqp);
	FUNC4(rqp);
	error = FUNC8(rqp);
	FUNC6(rqp);
	if (!error)
		np->n_flag &= ~NFLUSHWIRE;
	return (error);
}