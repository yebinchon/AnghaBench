#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_short ;
struct svc_req {int rq_proc; int /*<<< orphan*/  rq_vers; } ;
struct statfs {int /*<<< orphan*/  f_fsid; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int sa_family; int /*<<< orphan*/  sa_len; } ;
struct fhreturn {int fhr_flag; int fhr_numsecflavors; int* fhr_secflavors; int /*<<< orphan*/  fhr_fh; int /*<<< orphan*/  fhr_vers; } ;
struct exportlist {int ex_defnumsecflavors; int* ex_defsecflavors; struct dirlist* ex_dirl; struct dirlist* ex_defdir; } ;
struct dirlist {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  nfsfh_t ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_2__ {struct sockaddr* buf; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
#define  AF_INET 135 
#define  AF_INET6 134 
 int DP_HOSTSET ; 
 int EACCES ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  IPPORT_RESERVED ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MNTPATHLEN ; 
#define  MOUNTPROC_DUMP 133 
#define  MOUNTPROC_EXPORT 132 
#define  MOUNTPROC_MNT 131 
#define  MOUNTPROC_UMNT 130 
#define  MOUNTPROC_UMNTALL 129 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
#define  NULLPROC 128 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dirlist*,struct sockaddr*,int*,int*,int*,int**) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  dir_only ; 
 struct dirlist* FUNC6 (struct dirlist*,char*) ; 
 int /*<<< orphan*/  dolog ; 
 int errno ; 
 struct exportlist* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exphead ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  resvport_only ; 
 int /*<<< orphan*/  FUNC13 (struct dirlist*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC18 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  xdr_dir ; 
 int /*<<< orphan*/  xdr_explist ; 
 int /*<<< orphan*/  xdr_explist_brief ; 
 int /*<<< orphan*/  xdr_fhs ; 
 int /*<<< orphan*/  xdr_long ; 
 int /*<<< orphan*/  xdr_mlist ; 
 int /*<<< orphan*/  xdr_void ; 

void
FUNC27(struct svc_req *rqstp, SVCXPRT *transp)
{
	struct exportlist *ep;
	struct dirlist *dp;
	struct fhreturn fhr;
	struct stat stb;
	struct statfs fsb;
	char host[NI_MAXHOST], numerichost[NI_MAXHOST];
	int lookup_failed = 1;
	struct sockaddr *saddr;
	u_short sport;
	char rpcpath[MNTPATHLEN + 1], dirpath[MAXPATHLEN];
	int bad = 0, defset, hostset;
	sigset_t sighup_mask;
	int numsecflavors, *secflavorsp;

	FUNC15(&sighup_mask);
	FUNC14(&sighup_mask, SIGHUP);
	saddr = FUNC20(transp)->buf;
	switch (saddr->sa_family) {
	case AF_INET6:
		sport = FUNC11(((struct sockaddr_in6 *)saddr)->sin6_port);
		break;
	case AF_INET:
		sport = FUNC11(((struct sockaddr_in *)saddr)->sin_port);
		break;
	default:
		FUNC25(LOG_ERR, "request from unknown address family");
		return;
	}
	switch (rqstp->rq_proc) {
	case MOUNTPROC_MNT:
	case MOUNTPROC_UMNT:
	case MOUNTPROC_UMNTALL:
		lookup_failed = FUNC9(saddr, saddr->sa_len, host,
		    sizeof host, NULL, 0, 0);
	}
	FUNC9(saddr, saddr->sa_len, numerichost,
	    sizeof numerichost, NULL, 0, NI_NUMERICHOST);
	switch (rqstp->rq_proc) {
	case NULLPROC:
		if (!FUNC21(transp, (xdrproc_t)xdr_void, NULL))
			FUNC25(LOG_ERR, "can't send reply");
		return;
	case MOUNTPROC_MNT:
		if (sport >= IPPORT_RESERVED && resvport_only) {
			FUNC25(LOG_NOTICE,
			    "mount request from %s from unprivileged port",
			    numerichost);
			FUNC24(transp);
			return;
		}
		if (!FUNC19(transp, (xdrproc_t)xdr_dir, rpcpath)) {
			FUNC25(LOG_NOTICE, "undecodable mount request from %s",
			    numerichost);
			FUNC22(transp);
			return;
		}

		/*
		 * Get the real pathname and make sure it is a directory
		 * or a regular file if the -r option was specified
		 * and it exists.
		 */
		if (FUNC12(rpcpath, dirpath) == NULL ||
		    FUNC17(dirpath, &stb) < 0 ||
		    FUNC18(dirpath, &fsb) < 0) {
			FUNC3("/");	/* Just in case realpath doesn't */
			FUNC25(LOG_NOTICE,
			    "mount request from %s for non existent path %s",
			    numerichost, dirpath);
			if (debug)
				FUNC26("stat failed on %s", dirpath);
			bad = ENOENT;	/* We will send error reply later */
		}
		if (!bad &&
		    !FUNC0(stb.st_mode) &&
		    (dir_only || !FUNC1(stb.st_mode))) {
			FUNC25(LOG_NOTICE,
			    "mount request from %s for non-directory path %s",
			    numerichost, dirpath);
			if (debug)
				FUNC26("mounting non-directory %s", dirpath);
			bad = ENOTDIR;	/* We will send error reply later */
		}

		/* Check in the exports list */
		FUNC16(SIG_BLOCK, &sighup_mask, NULL);
		if (bad)
			ep = NULL;
		else
			ep = FUNC7(&fsb.f_fsid, exphead);
		hostset = defset = 0;
		if (ep && (FUNC4(ep->ex_defdir, saddr, &defset, &hostset,
		    &numsecflavors, &secflavorsp) ||
		    ((dp = FUNC6(ep->ex_dirl, dirpath)) &&
		      FUNC4(dp, saddr, &defset, &hostset, &numsecflavors,
		       &secflavorsp)) ||
		    (defset && FUNC13(ep->ex_defdir, saddr) == 0 &&
		     FUNC13(ep->ex_dirl, saddr) == 0))) {
			if (bad) {
				if (!FUNC21(transp, (xdrproc_t)xdr_long,
				    (caddr_t)&bad))
					FUNC25(LOG_ERR, "can't send reply");
				FUNC16(SIG_UNBLOCK, &sighup_mask, NULL);
				return;
			}
			if (hostset & DP_HOSTSET) {
				fhr.fhr_flag = hostset;
				fhr.fhr_numsecflavors = numsecflavors;
				fhr.fhr_secflavors = secflavorsp;
			} else {
				fhr.fhr_flag = defset;
				fhr.fhr_numsecflavors = ep->ex_defnumsecflavors;
				fhr.fhr_secflavors = ep->ex_defsecflavors;
			}
			fhr.fhr_vers = rqstp->rq_vers;
			/* Get the file handle */
			FUNC10(&fhr.fhr_fh, 0, sizeof(nfsfh_t));
			if (FUNC8(dirpath, (fhandle_t *)&fhr.fhr_fh) < 0) {
				bad = errno;
				FUNC25(LOG_ERR, "can't get fh for %s", dirpath);
				if (!FUNC21(transp, (xdrproc_t)xdr_long,
				    (caddr_t)&bad))
					FUNC25(LOG_ERR, "can't send reply");
				FUNC16(SIG_UNBLOCK, &sighup_mask, NULL);
				return;
			}
			if (!FUNC21(transp, (xdrproc_t)xdr_fhs,
			    (caddr_t)&fhr))
				FUNC25(LOG_ERR, "can't send reply");
			if (!lookup_failed)
				FUNC2(host, dirpath);
			else
				FUNC2(numerichost, dirpath);
			if (debug)
				FUNC26("mount successful");
			if (dolog)
				FUNC25(LOG_NOTICE,
				    "mount request succeeded from %s for %s",
				    numerichost, dirpath);
		} else {
			if (!bad)
				bad = EACCES;
			FUNC25(LOG_NOTICE,
			    "mount request denied from %s for %s",
			    numerichost, dirpath);
		}

		if (bad && !FUNC21(transp, (xdrproc_t)xdr_long,
		    (caddr_t)&bad))
			FUNC25(LOG_ERR, "can't send reply");
		FUNC16(SIG_UNBLOCK, &sighup_mask, NULL);
		return;
	case MOUNTPROC_DUMP:
		if (!FUNC21(transp, (xdrproc_t)xdr_mlist, (caddr_t)NULL))
			FUNC25(LOG_ERR, "can't send reply");
		else if (dolog)
			FUNC25(LOG_NOTICE,
			    "dump request succeeded from %s",
			    numerichost);
		return;
	case MOUNTPROC_UMNT:
		if (sport >= IPPORT_RESERVED && resvport_only) {
			FUNC25(LOG_NOTICE,
			    "umount request from %s from unprivileged port",
			    numerichost);
			FUNC24(transp);
			return;
		}
		if (!FUNC19(transp, (xdrproc_t)xdr_dir, rpcpath)) {
			FUNC25(LOG_NOTICE, "undecodable umount request from %s",
			    numerichost);
			FUNC22(transp);
			return;
		}
		if (FUNC12(rpcpath, dirpath) == NULL) {
			FUNC25(LOG_NOTICE, "umount request from %s "
			    "for non existent path %s",
			    numerichost, dirpath);
		}
		if (!FUNC21(transp, (xdrproc_t)xdr_void, (caddr_t)NULL))
			FUNC25(LOG_ERR, "can't send reply");
		if (!lookup_failed)
			FUNC5(host, dirpath);
		FUNC5(numerichost, dirpath);
		if (dolog)
			FUNC25(LOG_NOTICE,
			    "umount request succeeded from %s for %s",
			    numerichost, dirpath);
		return;
	case MOUNTPROC_UMNTALL:
		if (sport >= IPPORT_RESERVED && resvport_only) {
			FUNC25(LOG_NOTICE,
			    "umountall request from %s from unprivileged port",
			    numerichost);
			FUNC24(transp);
			return;
		}
		if (!FUNC21(transp, (xdrproc_t)xdr_void, (caddr_t)NULL))
			FUNC25(LOG_ERR, "can't send reply");
		if (!lookup_failed)
			FUNC5(host, NULL);
		FUNC5(numerichost, NULL);
		if (dolog)
			FUNC25(LOG_NOTICE,
			    "umountall request succeeded from %s",
			    numerichost);
		return;
	case MOUNTPROC_EXPORT:
		if (!FUNC21(transp, (xdrproc_t)xdr_explist, (caddr_t)NULL))
			if (!FUNC21(transp, (xdrproc_t)xdr_explist_brief,
			    (caddr_t)NULL))
				FUNC25(LOG_ERR, "can't send reply");
		if (dolog)
			FUNC25(LOG_NOTICE,
			    "export request succeeded from %s",
			    numerichost);
		return;
	default:
		FUNC23(transp);
		return;
	}
}