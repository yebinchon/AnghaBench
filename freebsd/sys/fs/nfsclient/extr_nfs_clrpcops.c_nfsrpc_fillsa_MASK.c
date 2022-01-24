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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_port; int sin6_len; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; int sin_len; TYPE_1__ sin_addr; } ;
struct sockaddr {int nr_vers; struct sockaddr* nr_nam; int /*<<< orphan*/  nr_mtx; int /*<<< orphan*/  nr_cred; int /*<<< orphan*/  nr_prog; int /*<<< orphan*/  nr_sotype; } ;
struct nfssockreq {int nr_vers; struct nfssockreq* nr_nam; int /*<<< orphan*/  nr_mtx; int /*<<< orphan*/  nr_cred; int /*<<< orphan*/  nr_prog; int /*<<< orphan*/  nr_sotype; } ;
struct TYPE_5__ {int /*<<< orphan*/ * nr_cred; scalar_t__ nr_nam; } ;
struct nfsmount {int /*<<< orphan*/  nm_sess; TYPE_2__ nm_sockreq; struct nfsclclient* nm_clp; } ;
struct TYPE_6__ {scalar_t__ nfsess_defunct; int /*<<< orphan*/  nfsess_sequenceid; int /*<<< orphan*/  nfsess_mtx; } ;
struct nfsclds {int nfsclds_flags; TYPE_3__ nfsclds_sess; struct sockaddr* nfsclds_sockp; int /*<<< orphan*/  nfsclds_mtx; int /*<<< orphan*/  nfsclds_expire; } ;
struct nfsclclient {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  scalar_t__ sa_family_t ;
typedef  enum nfsclds_state { ____Placeholder_nfsclds_state } nfsclds_state ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NFSCLDS ; 
 int /*<<< orphan*/  M_NFSSOCKREQ ; 
 int /*<<< orphan*/  M_SONAME ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int NFSCLDS_DS ; 
 int NFSCLDS_SAMECONN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int NFSDSP_NOTFOUND ; 
 int NFSDSP_USETHISSESSION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfsclds*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nfsclds*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsmount*) ; 
 int /*<<< orphan*/  NFSV4EXCH_USEPNFSDS ; 
 int /*<<< orphan*/  NFS_PROG ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 struct nfsclds* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct nfsclds*,int /*<<< orphan*/ ) ; 
 struct nfsclds* FUNC14 (struct nfsclds*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct nfsmount*,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sockaddr*) ; 
 scalar_t__ nfscl_dssameconn ; 
 int /*<<< orphan*/  FUNC21 (struct nfsclds*) ; 
 int FUNC22 (struct nfsmount*,struct nfsclds*,struct nfsclds**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsclds_list ; 
 int FUNC23 (struct nfsmount*,TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC24 (struct nfsmount*,struct nfsclclient*,struct sockaddr*,int /*<<< orphan*/ ,struct nfsclds**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC25(struct nfsmount *nmp, struct sockaddr_in *sin,
    struct sockaddr_in6 *sin6, sa_family_t af, int vers, struct nfsclds **dspp,
    NFSPROC_T *p)
{
	struct sockaddr_in *msad, *sad;
	struct sockaddr_in6 *msad6, *sad6;
	struct nfsclclient *clp;
	struct nfssockreq *nrp;
	struct nfsclds *dsp, *tdsp;
	int error;
	enum nfsclds_state retv;
	uint32_t sequenceid;

	FUNC1(nmp->nm_sockreq.nr_cred != NULL,
	    ("nfsrpc_fillsa: NULL nr_cred"));
	FUNC6();
	clp = nmp->nm_clp;
	FUNC9();
	if (clp == NULL)
		return (EPERM);
	if (af == AF_INET) {
		FUNC8(nmp);
		/*
		 * Check to see if we already have a session for this
		 * address that is usable for a DS.
		 * Note that the MDS's address is in a different place
		 * than the sessions already acquired for DS's.
		 */
		msad = (struct sockaddr_in *)nmp->nm_sockreq.nr_nam;
		tdsp = FUNC12(&nmp->nm_sess);
		while (tdsp != NULL) {
			if (msad != NULL && msad->sin_family == AF_INET &&
			    sin->sin_addr.s_addr == msad->sin_addr.s_addr &&
			    sin->sin_port == msad->sin_port &&
			    (tdsp->nfsclds_flags & NFSCLDS_DS) != 0 &&
			    tdsp->nfsclds_sess.nfsess_defunct == 0) {
				*dspp = tdsp;
				FUNC11(nmp);
				FUNC3(4, "fnd same addr\n");
				return (0);
			}
			tdsp = FUNC14(tdsp, nfsclds_list);
			if (tdsp != NULL && tdsp->nfsclds_sockp != NULL)
				msad = (struct sockaddr_in *)
				    tdsp->nfsclds_sockp->nr_nam;
			else
				msad = NULL;
		}
		FUNC11(nmp);

		/* No IP address match, so look for new/trunked one. */
		sad = FUNC17(sizeof(*sad), M_SONAME, M_WAITOK | M_ZERO);
		sad->sin_len = sizeof(*sad);
		sad->sin_family = AF_INET;
		sad->sin_port = sin->sin_port;
		sad->sin_addr.s_addr = sin->sin_addr.s_addr;
		nrp = FUNC17(sizeof(*nrp), M_NFSSOCKREQ, M_WAITOK | M_ZERO);
		nrp->nr_nam = (struct sockaddr *)sad;
	} else if (af == AF_INET6) {
		FUNC8(nmp);
		/*
		 * Check to see if we already have a session for this
		 * address that is usable for a DS.
		 * Note that the MDS's address is in a different place
		 * than the sessions already acquired for DS's.
		 */
		msad6 = (struct sockaddr_in6 *)nmp->nm_sockreq.nr_nam;
		tdsp = FUNC12(&nmp->nm_sess);
		while (tdsp != NULL) {
			if (msad6 != NULL && msad6->sin6_family == AF_INET6 &&
			    FUNC0(&sin6->sin6_addr,
			    &msad6->sin6_addr) &&
			    sin6->sin6_port == msad6->sin6_port &&
			    (tdsp->nfsclds_flags & NFSCLDS_DS) != 0 &&
			    tdsp->nfsclds_sess.nfsess_defunct == 0) {
				*dspp = tdsp;
				FUNC11(nmp);
				return (0);
			}
			tdsp = FUNC14(tdsp, nfsclds_list);
			if (tdsp != NULL && tdsp->nfsclds_sockp != NULL)
				msad6 = (struct sockaddr_in6 *)
				    tdsp->nfsclds_sockp->nr_nam;
			else
				msad6 = NULL;
		}
		FUNC11(nmp);

		/* No IP address match, so look for new/trunked one. */
		sad6 = FUNC17(sizeof(*sad6), M_SONAME, M_WAITOK | M_ZERO);
		sad6->sin6_len = sizeof(*sad6);
		sad6->sin6_family = AF_INET6;
		sad6->sin6_port = sin6->sin6_port;
		FUNC2(&sin6->sin6_addr, &sad6->sin6_addr,
		    sizeof(struct in6_addr));
		nrp = FUNC17(sizeof(*nrp), M_NFSSOCKREQ, M_WAITOK | M_ZERO);
		nrp->nr_nam = (struct sockaddr *)sad6;
	} else
		return (EPERM);

	nrp->nr_sotype = SOCK_STREAM;
	FUNC18(&nrp->nr_mtx, "nfssock", NULL, MTX_DEF);
	nrp->nr_prog = NFS_PROG;
	nrp->nr_vers = vers;

	/*
	 * Use the credentials that were used for the mount, which are
	 * in nmp->nm_sockreq.nr_cred for newnfs_connect() etc.
	 * Ref. counting the credentials with crhold() is probably not
	 * necessary, since nm_sockreq.nr_cred won't be crfree()'d until
	 * unmount, but I did it anyhow.
	 */
	nrp->nr_cred = FUNC15(nmp->nm_sockreq.nr_cred);
	error = FUNC19(nmp, nrp, NULL, p, 0);
	FUNC3(3, "DS connect=%d\n", error);

	dsp = NULL;
	/* Now, do the exchangeid and create session. */
	if (error == 0) {
		if (vers == NFS_VER4) {
			error = FUNC24(nmp, clp, nrp,
			    NFSV4EXCH_USEPNFSDS, &dsp, nrp->nr_cred, p);
			FUNC3(3, "DS exchangeid=%d\n", error);
			if (error != 0)
				FUNC20(nrp);
		} else {
			dsp = FUNC17(sizeof(struct nfsclds), M_NFSCLDS,
			    M_WAITOK | M_ZERO);
			dsp->nfsclds_flags |= NFSCLDS_DS;
			dsp->nfsclds_expire = INT32_MAX; /* No renews needed. */
			FUNC18(&dsp->nfsclds_mtx, "nfsds", NULL, MTX_DEF);
			FUNC18(&dsp->nfsclds_sess.nfsess_mtx, "nfssession",
			    NULL, MTX_DEF);
		}
	}
	if (error == 0) {
		dsp->nfsclds_sockp = nrp;
		if (vers == NFS_VER4) {
			FUNC8(nmp);
			retv = FUNC22(nmp, dsp, &tdsp,
			    &sequenceid);
			FUNC3(3, "getsame ret=%d\n", retv);
			if (retv == NFSDSP_USETHISSESSION &&
			    nfscl_dssameconn != 0) {
				FUNC7(tdsp);
				tdsp->nfsclds_flags |= NFSCLDS_SAMECONN;
				FUNC10(tdsp);
				FUNC11(nmp);
				/*
				 * If there is already a session for this
				 * server, use it.
				 */
				(void)FUNC20(nrp);
				FUNC21(dsp);
				*dspp = tdsp;
				return (0);
			}
			if (retv == NFSDSP_NOTFOUND)
				sequenceid =
				    dsp->nfsclds_sess.nfsess_sequenceid;
			FUNC11(nmp);
			error = FUNC23(nmp, &dsp->nfsclds_sess,
			    nrp, sequenceid, 0, nrp->nr_cred, p);
			FUNC3(3, "DS createsess=%d\n", error);
		}
	} else {
		FUNC4(nrp->nr_cred);
		FUNC5(&nrp->nr_mtx);
		FUNC16(nrp->nr_nam, M_SONAME);
		FUNC16(nrp, M_NFSSOCKREQ);
	}
	if (error == 0) {
		FUNC3(3, "add DS session\n");
		/*
		 * Put it at the end of the list. That way the list
		 * is ordered by when the entry was added. This matters
		 * since the one done first is the one that should be
		 * used for sequencid'ing any subsequent create sessions.
		 */
		FUNC8(nmp);
		FUNC13(&nmp->nm_sess, dsp, nfsclds_list);
		FUNC11(nmp);
		*dspp = dsp;
	} else if (dsp != NULL) {
		FUNC20(nrp);
		FUNC21(dsp);
	}
	return (error);
}