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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_next; void* ai_protocol; void* ai_socktype; void* ai_family; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  int255 ;
typedef  int /*<<< orphan*/  int1 ;
typedef  int /*<<< orphan*/  int0 ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  fd_mask ;
struct TYPE_2__ {int fd; void* events; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct addrinfo*) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 void* IPPROTO_UDP ; 
 int /*<<< orphan*/  IPV6_HOPLIMIT ; 
 int /*<<< orphan*/  IPV6_MULTICAST_HOPS ; 
 int /*<<< orphan*/  IPV6_MULTICAST_LOOP ; 
 int /*<<< orphan*/  IPV6_PKTINFO ; 
 int /*<<< orphan*/  IPV6_RECVHOPLIMIT ; 
 int /*<<< orphan*/  IPV6_RECVPKTINFO ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  NFDBITS ; 
 int NI_MAXSERV ; 
 void* PF_INET6 ; 
 void* PF_ROUTE ; 
 void* POLLIN ; 
 int /*<<< orphan*/ * RIP6_DEST ; 
 int RIP6_PORT ; 
 void* SOCK_DGRAM ; 
 void* SOCK_RAW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int fdmasks ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifc_head ; 
 int /*<<< orphan*/ * index2ifc ; 
 void* FUNC8 (int) ; 
 scalar_t__ maxfd ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nflag ; 
 scalar_t__ nindex2ifc ; 
 int /*<<< orphan*/ * recvecp ; 
 int /*<<< orphan*/  ripsin ; 
 scalar_t__ ripsock ; 
 scalar_t__ rtsock ; 
 TYPE_1__* set ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 scalar_t__ FUNC13 (void*,void*,void*) ; 
 struct addrinfo* sockvecp ; 

__attribute__((used)) static void
FUNC14(void)
{
	int	error;
	const int int0 = 0, int1 = 1, int255 = 255;
	struct	addrinfo hints, *res;
	char	port[NI_MAXSERV];

	FUNC1(&ifc_head);
	nindex2ifc = 0;	/*initial guess*/
	index2ifc = NULL;
	FUNC12(port, sizeof(port), "%u", RIP6_PORT);

	FUNC10(&hints, 0, sizeof(hints));
	hints.ai_family = PF_INET6;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_protocol = IPPROTO_UDP;
	hints.ai_flags = AI_PASSIVE;
	error = FUNC6(NULL, port, &hints, &res);
	if (error) {
		FUNC3("%s", FUNC5(error));
		/*NOTREACHED*/
	}
	if (res->ai_next) {
		FUNC3(":: resolved to multiple address");
		/*NOTREACHED*/
	}

	ripsock = FUNC13(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (ripsock < 0) {
		FUNC3("rip socket");
		/*NOTREACHED*/
	}
#ifdef IPV6_V6ONLY
	if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_V6ONLY,
	    &int1, sizeof(int1)) < 0) {
		fatal("rip IPV6_V6ONLY");
		/*NOTREACHED*/
	}
#endif
	if (FUNC2(ripsock, res->ai_addr, res->ai_addrlen) < 0) {
		FUNC3("rip bind");
		/*NOTREACHED*/
	}
	if (FUNC11(ripsock, IPPROTO_IPV6, IPV6_MULTICAST_HOPS,
	    &int255, sizeof(int255)) < 0) {
		FUNC3("rip IPV6_MULTICAST_HOPS");
		/*NOTREACHED*/
	}
	if (FUNC11(ripsock, IPPROTO_IPV6, IPV6_MULTICAST_LOOP,
	    &int0, sizeof(int0)) < 0) {
		FUNC3("rip IPV6_MULTICAST_LOOP");
		/*NOTREACHED*/
	}

#ifdef IPV6_RECVPKTINFO
	if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_RECVPKTINFO,
	    &int1, sizeof(int1)) < 0) {
		fatal("rip IPV6_RECVPKTINFO");
		/*NOTREACHED*/
	}
#else  /* old adv. API */
	if (FUNC11(ripsock, IPPROTO_IPV6, IPV6_PKTINFO,
	    &int1, sizeof(int1)) < 0) {
		FUNC3("rip IPV6_PKTINFO");
		/*NOTREACHED*/
	}
#endif

#ifdef IPV6_RECVPKTINFO
	if (setsockopt(ripsock, IPPROTO_IPV6, IPV6_RECVHOPLIMIT,
	    &int1, sizeof(int1)) < 0) {
		fatal("rip IPV6_RECVHOPLIMIT");
		/*NOTREACHED*/
	}
#else  /* old adv. API */
	if (FUNC11(ripsock, IPPROTO_IPV6, IPV6_HOPLIMIT,
	    &int1, sizeof(int1)) < 0) {
		FUNC3("rip IPV6_HOPLIMIT");
		/*NOTREACHED*/
	}
#endif
	FUNC4(res);

	FUNC10(&hints, 0, sizeof(hints));
	hints.ai_family = PF_INET6;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_protocol = IPPROTO_UDP;
	error = FUNC6(RIP6_DEST, port, &hints, &res);
	if (error) {
		FUNC3("%s", FUNC5(error));
		/*NOTREACHED*/
	}
	if (res->ai_next) {
		FUNC3("%s resolved to multiple address", RIP6_DEST);
		/*NOTREACHED*/
	}
	FUNC9(&ripsin, res->ai_addr, res->ai_addrlen);
	FUNC4(res);

#ifdef HAVE_POLL_H
	set[0].fd = ripsock;
	set[0].events = POLLIN;
#else
	maxfd = ripsock;
#endif

	if (nflag == 0) {
		if ((rtsock = FUNC13(PF_ROUTE, SOCK_RAW, 0)) < 0) {
			FUNC3("route socket");
			/*NOTREACHED*/
		}
#ifdef HAVE_POLL_H
		set[1].fd = rtsock;
		set[1].events = POLLIN;
#else
		if (rtsock > maxfd)
			maxfd = rtsock;
#endif
	} else {
#ifdef HAVE_POLL_H
		set[1].fd = -1;
#else
		rtsock = -1;	/*just for safety */
#endif
	}

#ifndef HAVE_POLL_H
	fdmasks = FUNC7(maxfd + 1, NFDBITS) * sizeof(fd_mask);
	if ((sockvecp = FUNC8(fdmasks)) == NULL) {
		FUNC3("malloc");
		/*NOTREACHED*/
	}
	if ((recvecp = FUNC8(fdmasks)) == NULL) {
		FUNC3("malloc");
		/*NOTREACHED*/
	}
	FUNC10(sockvecp, 0, fdmasks);
	FUNC0(ripsock, sockvecp);
	if (rtsock >= 0)
		FUNC0(rtsock, sockvecp);
#endif
}