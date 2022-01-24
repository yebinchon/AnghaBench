#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smbfattr {scalar_t__ fa_size; int /*<<< orphan*/  fa_mtime; int /*<<< orphan*/  fa_attr; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sv_tz; } ;
struct TYPE_7__ {TYPE_2__ vc_sopt; } ;
struct TYPE_5__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int EBADRPC ; 
 int /*<<< orphan*/  SMB_COM_QUERY_INFORMATION ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_3__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mdchain*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct mdchain*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*,struct mbchain**) ; 
 int FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct mbchain*,TYPE_3__*,struct smbnode*,char const*,int) ; 

int
FUNC17(struct smbnode *np, const char *name, int len,
		     struct smbfattr *fap, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int8_t wc;
	int error;
	u_int16_t wattr;
	u_int32_t lint;

	error = FUNC6(FUNC0(ssp), SMB_COM_QUERY_INFORMATION, scred,
	    &rqp);
	if (error)
		return (error);
	FUNC11(rqp, &mbp);
	FUNC14(rqp);
	FUNC13(rqp);
	FUNC8(rqp);
	FUNC2(mbp, SMB_DT_ASCII);
	do {
		error = FUNC16(mbp, FUNC1(ssp), np, name, len);
		if (error)
			break;
		FUNC7(rqp);
		error = FUNC12(rqp);
		if (error)
			break;
		FUNC10(rqp, &mdp);
		if (FUNC5(mdp, &wc) != 0 || wc != 10) {
			error = EBADRPC;
			break;
		}
		FUNC3(mdp, &wattr);
		fap->fa_attr = wattr;
		/*
		 * Be careful using the time returned here, as
		 * with FAT on NT4SP6, at least, the time returned is low
		 * 32 bits of 100s of nanoseconds (since 1601) so it rolls
		 * over about every seven minutes!
		 */
		FUNC4(mdp, &lint); /* specs: secs since 1970 */
		if (lint)	/* avoid bogus zero returns */
			FUNC15(lint, FUNC1(ssp)->vc_sopt.sv_tz,
					      &fap->fa_mtime);
		FUNC4(mdp, &lint);
		fap->fa_size = lint;
	} while(0);
	FUNC9(rqp);
	return error;
}