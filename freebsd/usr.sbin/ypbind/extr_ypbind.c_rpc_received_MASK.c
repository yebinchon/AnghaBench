#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  ypbind_binding_port; int /*<<< orphan*/  ypbind_binding_addr; } ;
struct TYPE_9__ {TYPE_2__ ypbind_bindinfo; } ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct TYPE_12__ {TYPE_1__ sin_addr; } ;
struct ypbind_resp {char* dom_domain; int dom_alive; int dom_default; int dom_lockfd; int dom_vers; TYPE_3__ ypbind_resp_u; int /*<<< orphan*/  ypbind_status; scalar_t__ dom_broadcast_pid; TYPE_6__ dom_server_addr; struct ypbind_resp* dom_pnext; } ;
struct TYPE_11__ {long s_addr; } ;
struct sockaddr_in {long sin_port; TYPE_5__ sin_addr; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct _dom_binding {char* dom_domain; int dom_alive; int dom_default; int dom_lockfd; int dom_vers; TYPE_3__ ypbind_resp_u; int /*<<< orphan*/  ypbind_status; scalar_t__ dom_broadcast_pid; TYPE_6__ dom_server_addr; struct _dom_binding* dom_pnext; } ;
struct TYPE_10__ {int /*<<< orphan*/  xp_port; } ;

/* Variables and functions */
 char* BINDINGDIR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ IPPORT_RESERVED ; 
 int /*<<< orphan*/  LOCK_SH ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MAXPATHLEN ; 
 scalar_t__ NOT_RESPONDING_HYSTERESIS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_SHLOCK ; 
 int O_TRUNC ; 
 int READFD ; 
 int /*<<< orphan*/  SIGINT ; 
 int WRITEFD ; 
 int /*<<< orphan*/  YPBIND_SUCC_VAL ; 
 scalar_t__ YPMAXDOMAIN ; 
 int YPVERS ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ypbind_resp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ypbind_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  domains ; 
 int /*<<< orphan*/  fdsr ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ypbind_resp*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ypbind_resp* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ not_responding_count ; 
 scalar_t__ FUNC12 (long) ; 
 int FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,char*,int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* udptransp ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (int,struct iovec*,int) ; 
 struct ypbind_resp* ypbindlist ; 
 scalar_t__ ypsecuremode ; 

void
FUNC21(char *dom, struct sockaddr_in *raddrp, int force)
{
	struct _dom_binding *ypdb, *prev = NULL;
	struct iovec iov[2];
	struct ypbind_resp ybr;
	char path[MAXPATHLEN];
	int fd;

	/*printf("returned from %s/%d about %s\n", inet_ntoa(raddrp->sin_addr),
	       ntohs(raddrp->sin_port), dom);*/

	if (dom == NULL)
		return;

	for (ypdb = ypbindlist; ypdb; ypdb = ypdb->dom_pnext) {
		if (FUNC15(ypdb->dom_domain, dom) == 0)
			break;
		prev = ypdb;
	}

	if (ypdb && force) {
		if (ypdb->dom_broadcast_pid) {
			FUNC8(ypdb->dom_broadcast_pid, SIGINT);
			FUNC4(READFD);
			FUNC0(READFD, &fdsr);
			FUNC0(READFD, &svc_fdset);
			READFD = WRITEFD = -1;
		}
	}

	/* if in secure mode, check originating port number */
	if ((ypsecuremode && (FUNC12(raddrp->sin_port) >= IPPORT_RESERVED))) {
	    FUNC18(LOG_WARNING, "Rejected NIS server on [%s/%d] for domain %s.",
		   FUNC7(raddrp->sin_addr), FUNC12(raddrp->sin_port),
		   dom);
	    if (ypdb != NULL) {
		ypdb->dom_broadcast_pid = 0;
		ypdb->dom_alive = 0;
	    }
	    return;
	}

	if (raddrp->sin_addr.s_addr == (long)0) {
		switch (ypdb->dom_default) {
		case 0:
			if (prev == NULL)
				ypbindlist = ypdb->dom_pnext;
			else
				prev->dom_pnext = ypdb->dom_pnext;
			FUNC14(path, "%s/%s.%ld", BINDINGDIR,
				ypdb->dom_domain, YPVERS);
			FUNC4(ypdb->dom_lockfd);
			FUNC19(path);
			FUNC6(ypdb);
			domains--;
			return;
		case 1:
			ypdb->dom_broadcast_pid = 0;
			ypdb->dom_alive = 0;
			FUNC2(ypdb);
			return;
		default:
			break;
		}
	}

	if (ypdb == NULL) {
		if (force == 0)
			return;
		if (FUNC17(dom) > YPMAXDOMAIN) {
			FUNC18(LOG_WARNING, "domain %s too long", dom);
			return;
		}
		ypdb = FUNC9(sizeof *ypdb);
		if (ypdb == NULL) {
			FUNC18(LOG_WARNING, "malloc: %m");
			return;
		}
		FUNC3(ypdb, sizeof *ypdb);
		FUNC16(ypdb->dom_domain, dom, sizeof ypdb->dom_domain);
		ypdb->dom_lockfd = -1;
		ypdb->dom_default = 0;
		ypdb->dom_pnext = ypbindlist;
		ypbindlist = ypdb;
	}

	/* We've recovered from a crash: inform the world. */
	if (ypdb->dom_vers == -1 && ypdb->dom_server_addr.sin_addr.s_addr) {
		if (not_responding_count >= NOT_RESPONDING_HYSTERESIS) {
			not_responding_count = 0;
			FUNC18(LOG_WARNING, "NIS server [%s] for domain \"%s\" OK",
			    FUNC7(raddrp->sin_addr), ypdb->dom_domain);
		}
	}

	FUNC1(raddrp, &ypdb->dom_server_addr,
		sizeof ypdb->dom_server_addr);

	ypdb->dom_vers = YPVERS;
	ypdb->dom_alive = 1;
	ypdb->dom_broadcast_pid = 0;

	if (ypdb->dom_lockfd != -1)
		FUNC4(ypdb->dom_lockfd);

	FUNC14(path, "%s/%s.%ld", BINDINGDIR,
		ypdb->dom_domain, ypdb->dom_vers);
#ifdef O_SHLOCK
	if ((fd = open(path, O_CREAT|O_SHLOCK|O_RDWR|O_TRUNC, 0644)) == -1) {
		(void)mkdir(BINDINGDIR, 0755);
		if ((fd = open(path, O_CREAT|O_SHLOCK|O_RDWR|O_TRUNC, 0644)) == -1)
			return;
	}
#else
	if ((fd = FUNC13(path, O_CREAT|O_RDWR|O_TRUNC, 0644)) == -1) {
		(void)FUNC11(BINDINGDIR, 0755);
		if ((fd = FUNC13(path, O_CREAT|O_RDWR|O_TRUNC, 0644)) == -1)
			return;
	}
	FUNC5(fd, LOCK_SH);
#endif

	/*
	 * ok, if BINDINGDIR exists, and we can create the binding file,
	 * then write to it..
	 */
	ypdb->dom_lockfd = fd;

	iov[0].iov_base = (char *)&(udptransp->xp_port);
	iov[0].iov_len = sizeof udptransp->xp_port;
	iov[1].iov_base = (char *)&ybr;
	iov[1].iov_len = sizeof ybr;

	FUNC3(&ybr, sizeof ybr);
	ybr.ypbind_status = YPBIND_SUCC_VAL;
	FUNC10(&ybr.ypbind_resp_u.ypbind_bindinfo.ypbind_binding_addr,
	    &raddrp->sin_addr.s_addr, sizeof(u_int32_t));
	FUNC10(&ybr.ypbind_resp_u.ypbind_bindinfo.ypbind_binding_port,
	    &raddrp->sin_port, sizeof(u_short));

	if (FUNC20(ypdb->dom_lockfd, iov, 2) != iov[0].iov_len + iov[1].iov_len) {
		FUNC18(LOG_WARNING, "write: %m");
		FUNC4(ypdb->dom_lockfd);
		ypdb->dom_lockfd = -1;
		return;
	}
}