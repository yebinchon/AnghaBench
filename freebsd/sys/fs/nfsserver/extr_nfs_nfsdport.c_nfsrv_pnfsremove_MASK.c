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
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct ucred {int dummy; } ;
struct nfsrvdsremove {scalar_t__ inprog; scalar_t__ done; int err; int /*<<< orphan*/  tsk; int /*<<< orphan*/  fname; struct vnode* dvp; int /*<<< orphan*/ * p; struct ucred* tcred; } ;
struct nfsmount {int nm_privflag; } ;
struct nfsdevice {int dummy; } ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsmount*) ; 
 int NFSMNTP_CANCELRPCS ; 
 int NFSMNTP_FORCEDISM ; 
 int /*<<< orphan*/  FUNC3 (struct nfsmount*) ; 
 int /*<<< orphan*/  PNFSDOP_DELDSSERVER ; 
 scalar_t__ PNFS_FILENAME_LEN ; 
 int /*<<< orphan*/  PVFS ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsrvdsremove*,int /*<<< orphan*/ ) ; 
 int hz ; 
 struct nfsrvdsremove* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ucred* FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,struct nfsrvdsremove*) ; 
 scalar_t__ nfs_pnfsiothreads ; 
 scalar_t__ FUNC9 (int) ; 
 struct nfsdevice* FUNC10 (int /*<<< orphan*/ ,struct nfsmount*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct vnode*,char*,struct ucred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsmount*) ; 
 int /*<<< orphan*/  start_dsremove ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsmount*) ; 

__attribute__((used)) static void
FUNC17(struct vnode **dvp, int mirrorcnt, char *fname, fhandle_t *fhp,
    NFSPROC_T *p)
{
	struct ucred *tcred;
	struct nfsrvdsremove *dsrm, *tdsrm;
	struct nfsdevice *ds;
	struct nfsmount *nmp;
	int failpos, i, ret, timo;

	tcred = FUNC7();
	dsrm = NULL;
	if (mirrorcnt > 1)
		dsrm = FUNC6(sizeof(*dsrm) * mirrorcnt - 1, M_TEMP, M_WAITOK);
	/*
	 * Remove the file on each DS mirror, using kernel process(es) for the
	 * additional mirrors.
	 */
	failpos = -1;
	for (tdsrm = dsrm, i = 0; i < mirrorcnt - 1; i++, tdsrm++) {
		tdsrm->tcred = tcred;
		tdsrm->p = p;
		tdsrm->dvp = dvp[i];
		FUNC14(tdsrm->fname, fname, PNFS_FILENAME_LEN + 1);
		tdsrm->inprog = 0;
		tdsrm->done = 0;
		tdsrm->err = 0;
		ret = EIO;
		if (nfs_pnfsiothreads != 0) {
			ret = FUNC8(start_dsremove, tdsrm);
			FUNC0(4, "nfsrv_pnfsremove: nfs_pnfsio=%d\n", ret);
		}
		if (ret != 0) {
			ret = FUNC11(dvp[i], fname, tcred, p);
			if (failpos == -1 && FUNC9(ret))
				failpos = i;
		}
	}
	ret = FUNC11(dvp[mirrorcnt - 1], fname, tcred, p);
	if (failpos == -1 && mirrorcnt > 1 && FUNC9(ret))
		failpos = mirrorcnt - 1;
	timo = hz / 50;		/* Wait for 20msec. */
	if (timo < 1)
		timo = 1;
	/* Wait for kernel task(s) to complete. */
	for (tdsrm = dsrm, i = 0; i < mirrorcnt - 1; i++, tdsrm++) {
		while (tdsrm->inprog != 0 && tdsrm->done == 0)
			FUNC15(&tdsrm->tsk, PVFS, "srvdsrm", timo);
		if (failpos == -1 && FUNC9(tdsrm->err))
			failpos = i;
	}

	/*
	 * If failpos has been set, that mirror has failed, so it needs
	 * to be disabled.
	 */
	if (failpos >= 0) {
		nmp = FUNC4(dvp[failpos]->v_mount);
		FUNC2(nmp);
		if ((nmp->nm_privflag & (NFSMNTP_FORCEDISM |
		     NFSMNTP_CANCELRPCS)) == 0) {
			nmp->nm_privflag |= NFSMNTP_CANCELRPCS;
			FUNC3(nmp);
			ds = FUNC10(PNFSDOP_DELDSSERVER, nmp, p);
			FUNC0(4, "dsremovefail fail=%d ds=%p\n", failpos,
			    ds);
			if (ds != NULL)
				FUNC13(nmp);
			FUNC2(nmp);
			nmp->nm_privflag &= ~NFSMNTP_CANCELRPCS;
			FUNC16(nmp);
		}
		FUNC3(nmp);
	}

	/* Get rid all layouts for the file. */
	FUNC12(fhp);

	FUNC1(tcred);
	FUNC5(dsrm, M_TEMP);
}