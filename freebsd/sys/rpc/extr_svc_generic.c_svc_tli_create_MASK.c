#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ buf; } ;
struct t_bind {scalar_t__ qlen; TYPE_1__ addr; } ;
struct socket {int dummy; } ;
struct sockaddr_storage {int /*<<< orphan*/  ss_len; int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {char* nc_netid; int /*<<< orphan*/  nc_protofmly; } ;
struct __rpc_sockinfo {int si_socktype; int /*<<< orphan*/  si_alen; int /*<<< orphan*/  si_af; } ;
typedef  scalar_t__ bool_t ;
struct TYPE_10__ {int /*<<< orphan*/ * xp_socket; int /*<<< orphan*/  xp_netid; int /*<<< orphan*/  xp_type; } ;
typedef  TYPE_2__ SVCXPRT ;
typedef  int /*<<< orphan*/  SVCPOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  M_RPC ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 scalar_t__ TRUE ; 
 struct socket* FUNC0 (struct netconfig const*) ; 
 int /*<<< orphan*/  FUNC1 (struct netconfig const*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC7 (struct socket*,struct sockaddr*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int slen ; 
 scalar_t__ FUNC10 (struct socket*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,struct socket*,size_t,size_t) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,size_t,size_t) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *,struct socket*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

SVCXPRT *
FUNC19(
	SVCPOOL *pool,
	struct socket *so,		/* Connection end point */
	const struct netconfig *nconf,	/* Netconfig struct for nettoken */
	const struct t_bind *bindaddr,	/* Local bind address */
	size_t sendsz,			/* Max sendsize */
	size_t recvsz)			/* Max recvsize */
{
	SVCXPRT *xprt = NULL;		/* service handle */
	bool_t madeso = FALSE;		/* whether so opened here  */
	struct __rpc_sockinfo si;
	struct sockaddr_storage ss;

	if (!so) {
		if (nconf == NULL) {
			FUNC9("svc_tli_create: invalid netconfig\n");
			return (NULL);
		}
		so = FUNC0(nconf);
		if (!so) {
			FUNC9(
			    "svc_tli_create: could not open connection for %s\n",
					nconf->nc_netid);
			return (NULL);
		}
		FUNC1(nconf, &si);
		madeso = TRUE;
	} else {
		/*
		 * It is an open socket. Get the transport info.
		 */
		if (!FUNC2(so, &si)) {
			FUNC9(
		"svc_tli_create: could not get transport information\n");
			return (NULL);
		}
	}

	/*
	 * If the socket is unbound, try to bind it.
	 */
	if (madeso || !FUNC3(so)) {
		if (bindaddr == NULL) {
			if (FUNC7(so, NULL)) {
				FUNC8(&ss, 0, sizeof ss);
				ss.ss_family = si.si_af;
				ss.ss_len = si.si_alen;
				if (FUNC10(so, (struct sockaddr *)&ss,
					curthread)) {
					FUNC9(
			"svc_tli_create: could not bind to anonymous port\n");
					goto freedata;
				}
			}
			FUNC12(so, -1, curthread);
		} else {
			if (FUNC7(so,
				(struct sockaddr *)bindaddr->addr.buf)) {
				FUNC9(
		"svc_tli_create: could not bind to requested address\n");
				goto freedata;
			}
			FUNC12(so, (int)bindaddr->qlen, curthread);
		}
			
	}
	/*
	 * call transport specific function.
	 */
	switch (si.si_socktype) {
		case SOCK_STREAM:
#if 0
			slen = sizeof ss;
			if (_getpeername(fd, (struct sockaddr *)(void *)&ss, &slen)
			    == 0) {
				/* accepted socket */
				xprt = svc_fd_create(fd, sendsz, recvsz);
			} else
#endif
				xprt = FUNC17(pool, so, sendsz, recvsz);
			if (!nconf || !xprt)
				break;
#if 0
			/* XXX fvdl */
			if (strcmp(nconf->nc_protofmly, "inet") == 0 ||
			    strcmp(nconf->nc_protofmly, "inet6") == 0)
				(void) __svc_vc_setflag(xprt, TRUE);
#endif
			break;
		case SOCK_DGRAM:
			xprt = FUNC15(pool, so, sendsz, recvsz);
			break;
		default:
			FUNC9("svc_tli_create: bad service type");
			goto freedata;
	}

	if (xprt == NULL)
		/*
		 * The error messages here are spitted out by the lower layers:
		 * svc_vc_create(), svc_fd_create() and svc_dg_create().
		 */
		goto freedata;

	/* Fill in type of service */
	xprt->xp_type = FUNC4(si.si_socktype);

	if (nconf) {
		xprt->xp_netid = FUNC14(nconf->nc_netid, M_RPC);
	}
	return (xprt);

freedata:
	if (madeso)
		(void)FUNC11(so);
	if (xprt) {
		if (!madeso) /* so that svc_destroy doesnt close fd */
			xprt->xp_socket = NULL;
		FUNC18(xprt);
	}
	return (NULL);
}