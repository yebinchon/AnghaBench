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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sockaddr_in6 {int sin6_family; int /*<<< orphan*/  sin6_addr; void* sin6_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; void* sin_port; } ;
struct sockaddr {int ai_family; struct sockaddr* ai_addr; int /*<<< orphan*/  sa_len; void* ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; } ;
struct netconfig {scalar_t__ nc_semantics; int /*<<< orphan*/  nc_netid; } ;
struct addrinfo {int ai_family; struct addrinfo* ai_addr; int /*<<< orphan*/  sa_len; void* ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; } ;
struct __rpc_sockinfo {int si_af; int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_socktype; } ;
typedef  void* socklen_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ EAFNOSUPPORT ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ NC_TPI_CLTS ; 
 scalar_t__ NC_TPI_COTS ; 
 scalar_t__ NC_TPI_COTS_ORD ; 
 int /*<<< orphan*/  NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int FUNC0 (struct netconfig*) ; 
 int /*<<< orphan*/  FUNC1 (struct netconfig*,struct __rpc_sockinfo*) ; 
 int FUNC2 (int,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr*,struct sockaddr**) ; 
 scalar_t__ FUNC10 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ ** hosts ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int FUNC13 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC14 (int) ; 
 int mallocd_svcport ; 
 int /*<<< orphan*/  FUNC15 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int nhosts ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int* FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int* sock_fd ; 
 int sock_fdcnt ; 
 scalar_t__ FUNC19 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * svcport_str ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC21(struct netconfig *nconf)
{
	struct addrinfo hints, *res = NULL;
	struct sockaddr_in *sin;
	struct sockaddr_in6 *sin6;
	struct __rpc_sockinfo si;
	int aicode;
	int fd;
	int nhostsbak;
	int one = 1;
	int r;
	u_int32_t host_addr[4];  /* IPv4 or IPv6 */
	int mallocd_res;

	if ((nconf->nc_semantics != NC_TPI_CLTS) &&
	    (nconf->nc_semantics != NC_TPI_COTS) &&
	    (nconf->nc_semantics != NC_TPI_COTS_ORD))
		return (1);	/* not my type */

	/*
	 * XXX - using RPC library internal functions.
	 */
	if (!FUNC1(nconf, &si)) {
		FUNC20(LOG_ERR, "cannot get information for %s",
		    nconf->nc_netid);
		return (1);
	}

	/* Get mountd's address on this transport */
	FUNC15(&hints, 0, sizeof hints);
	hints.ai_family = si.si_af;
	hints.ai_socktype = si.si_socktype;
	hints.ai_protocol = si.si_proto;

	/*
	 * Bind to specific IPs if asked to
	 */
	nhostsbak = nhosts;
	while (nhostsbak > 0) {
		--nhostsbak;
		sock_fd = FUNC17(sock_fd, (sock_fdcnt + 1) * sizeof(int));
		if (sock_fd == NULL)
			FUNC16();
		sock_fd[sock_fdcnt++] = -1;	/* Set invalid for now. */
		mallocd_res = 0;

		hints.ai_flags = AI_PASSIVE;

		/*	
		 * XXX - using RPC library internal functions.
		 */
		if ((fd = FUNC0(nconf)) < 0) {
			int non_fatal = 0;
	    		if (errno == EAFNOSUPPORT &&
			    nconf->nc_semantics != NC_TPI_CLTS) 
				non_fatal = 1;
				
			FUNC20(non_fatal ? LOG_DEBUG : LOG_ERR, 
			    "cannot create socket for %s", nconf->nc_netid);
			if (non_fatal != 0)
				continue;
			FUNC5(1);
		}

		switch (hints.ai_family) {
		case AF_INET:
			if (FUNC13(AF_INET, hosts[nhostsbak],
			    host_addr) == 1) {
				hints.ai_flags |= AI_NUMERICHOST;
			} else {
				/*
				 * Skip if we have an AF_INET6 address.
				 */
				if (FUNC13(AF_INET6, hosts[nhostsbak],
				    host_addr) == 1) {
					FUNC3(fd);
					continue;
				}
			}
			break;
		case AF_INET6:
			if (FUNC13(AF_INET6, hosts[nhostsbak],
			    host_addr) == 1) {
				hints.ai_flags |= AI_NUMERICHOST;
			} else {
				/*
				 * Skip if we have an AF_INET address.
				 */
				if (FUNC13(AF_INET, hosts[nhostsbak],
				    host_addr) == 1) {
					FUNC3(fd);
					continue;
				}
			}

			/*
			 * We're doing host-based access checks here, so don't
			 * allow v4-in-v6 to confuse things. The kernel will
			 * disable it by default on NFS sockets too.
			 */
			if (FUNC18(fd, IPPROTO_IPV6, IPV6_V6ONLY, &one,
			    sizeof one) < 0) {
				FUNC20(LOG_ERR,
				    "can't disable v4-in-v6 on IPv6 socket");
				FUNC5(1);
			}
			break;
		default:
			break;
		}

		/*
		 * If no hosts were specified, just bind to INADDR_ANY
		 */
		if (FUNC19("*", hosts[nhostsbak]) == 0) {
			if (svcport_str == NULL) {
				res = FUNC14(sizeof(struct addrinfo));
				if (res == NULL) 
					FUNC16();
				mallocd_res = 1;
				res->ai_flags = hints.ai_flags;
				res->ai_family = hints.ai_family;
				res->ai_protocol = hints.ai_protocol;
				switch (res->ai_family) {
				case AF_INET:
					sin = FUNC14(sizeof(struct sockaddr_in));
					if (sin == NULL) 
						FUNC16();
					sin->sin_family = AF_INET;
					sin->sin_port = FUNC12(0);
					sin->sin_addr.s_addr = FUNC11(INADDR_ANY);
					res->ai_addr = (struct sockaddr*) sin;
					res->ai_addrlen = (socklen_t)
					    sizeof(struct sockaddr_in);
					break;
				case AF_INET6:
					sin6 = FUNC14(sizeof(struct sockaddr_in6));
					if (sin6 == NULL)
						FUNC16();
					sin6->sin6_family = AF_INET6;
					sin6->sin6_port = FUNC12(0);
					sin6->sin6_addr = in6addr_any;
					res->ai_addr = (struct sockaddr*) sin6;
					res->ai_addrlen = (socklen_t)
					    sizeof(struct sockaddr_in6);
					break;
				default:
					FUNC20(LOG_ERR, "bad addr fam %d",
					    res->ai_family);
					FUNC5(1);
				}
			} else { 
				if ((aicode = FUNC9(NULL, svcport_str,
				    &hints, &res)) != 0) {
					FUNC20(LOG_ERR,
					    "cannot get local address for %s: %s",
					    nconf->nc_netid,
					    FUNC8(aicode));
					FUNC3(fd);
					continue;
				}
			}
		} else {
			if ((aicode = FUNC9(hosts[nhostsbak], svcport_str,
			    &hints, &res)) != 0) {
				FUNC20(LOG_ERR,
				    "cannot get local address for %s: %s",
				    nconf->nc_netid, FUNC8(aicode));
				FUNC3(fd);
				continue;
			}
		}

		/* Store the fd. */
		sock_fd[sock_fdcnt - 1] = fd;

		/* Now, attempt the bind. */
		r = FUNC2(fd, res->ai_addr);
		if (r != 0) {
			if (errno == EADDRINUSE && mallocd_svcport != 0) {
				if (mallocd_res != 0) {
					FUNC6(res->ai_addr);
					FUNC6(res);
				} else
					FUNC7(res);
				return (-1);
			}
			FUNC20(LOG_ERR, "bindresvport_sa: %m");
			FUNC5(1);
		}

		if (svcport_str == NULL) {
			svcport_str = FUNC14(NI_MAXSERV * sizeof(char));
			if (svcport_str == NULL)
				FUNC16();
			mallocd_svcport = 1;

			if (FUNC10(res->ai_addr,
			    res->ai_addr->sa_len, NULL, NI_MAXHOST,
			    svcport_str, NI_MAXSERV * sizeof(char),
			    NI_NUMERICHOST | NI_NUMERICSERV))
				FUNC4(1, "Cannot get port number");
		}
		if (mallocd_res != 0) {
			FUNC6(res->ai_addr);
			FUNC6(res);
		} else
			FUNC7(res);
		res = NULL;
	}
	return (0);
}