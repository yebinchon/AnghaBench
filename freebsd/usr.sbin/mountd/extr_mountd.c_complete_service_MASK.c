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
struct netconfig {scalar_t__ nc_semantics; int /*<<< orphan*/  nc_netid; } ;
struct netbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;
struct __rpc_sockinfo {int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_socktype; int /*<<< orphan*/  si_af; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MOUNTPROG ; 
 int /*<<< orphan*/  MOUNTVERS ; 
 int /*<<< orphan*/  MOUNTVERS3 ; 
 scalar_t__ NC_TPI_CLTS ; 
 scalar_t__ NC_TPI_COTS ; 
 scalar_t__ NC_TPI_COTS_ORD ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  FUNC0 (struct netconfig*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  force_v2 ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mntsrv ; 
 int nhosts ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netconfig*,struct netbuf*) ; 
 int* sock_fd ; 
 scalar_t__ sock_fdcnt ; 
 scalar_t__ sock_fdpos ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xcreated ; 

__attribute__((used)) static void
FUNC14(struct netconfig *nconf, char *port_str)
{
	struct addrinfo hints, *res = NULL;
	struct __rpc_sockinfo si;
	struct netbuf servaddr;
	SVCXPRT	*transp = NULL;
	int aicode, fd, nhostsbak;
	int registered = 0;

	if ((nconf->nc_semantics != NC_TPI_CLTS) &&
	    (nconf->nc_semantics != NC_TPI_COTS) &&
	    (nconf->nc_semantics != NC_TPI_COTS_ORD))
		return;	/* not my type */

	/*
	 * XXX - using RPC library internal functions.
	 */
	if (!FUNC0(nconf, &si)) {
		FUNC13(LOG_ERR, "cannot get information for %s",
		    nconf->nc_netid);
		return;
	}

	nhostsbak = nhosts;
	while (nhostsbak > 0) {
		--nhostsbak;
		if (sock_fdpos >= sock_fdcnt) {
			/* Should never happen. */
			FUNC13(LOG_ERR, "Ran out of socket fd's");
			return;
		}
		fd = sock_fd[sock_fdpos++];
		if (fd < 0)
			continue;

		/*
		 * Using -1 tells listen(2) to use
		 * kern.ipc.soacceptqueue for the backlog.
		 */
		if (nconf->nc_semantics != NC_TPI_CLTS)
			FUNC5(fd, -1);

		if (nconf->nc_semantics == NC_TPI_CLTS )
			transp = FUNC10(fd, 0, 0);
		else 
			transp = FUNC12(fd, RPC_MAXDATASIZE,
			    RPC_MAXDATASIZE);

		if (transp != (SVCXPRT *) NULL) {
			if (!FUNC11(transp, MOUNTPROG, MOUNTVERS, mntsrv,
			    NULL)) 
				FUNC13(LOG_ERR,
				    "can't register %s MOUNTVERS service",
				    nconf->nc_netid);
			if (!force_v2) {
				if (!FUNC11(transp, MOUNTPROG, MOUNTVERS3,
				    mntsrv, NULL)) 
					FUNC13(LOG_ERR,
					    "can't register %s MOUNTVERS3 service",
					    nconf->nc_netid);
			}
		} else 
			FUNC13(LOG_WARNING, "can't create %s services",
			    nconf->nc_netid);

		if (registered == 0) {
			registered = 1;
			FUNC8(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = si.si_af;
			hints.ai_socktype = si.si_socktype;
			hints.ai_protocol = si.si_proto;

			if ((aicode = FUNC4(NULL, port_str, &hints,
			    &res)) != 0) {
				FUNC13(LOG_ERR, "cannot get local address: %s",
				    FUNC3(aicode));
				FUNC1(1);
			}

			servaddr.buf = FUNC6(res->ai_addrlen);
			FUNC7(servaddr.buf, res->ai_addr, res->ai_addrlen);
			servaddr.len = res->ai_addrlen;

			FUNC9(MOUNTPROG, MOUNTVERS, nconf, &servaddr);
			FUNC9(MOUNTPROG, MOUNTVERS3, nconf, &servaddr);

			xcreated++;
			FUNC2(res);
		}
	} /* end while */
}