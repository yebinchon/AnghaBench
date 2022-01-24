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
typedef  char u_char ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; void* sin6_family; } ;
struct rt_msghdr {int rtm_flags; int rtm_addrs; int rtm_msglen; int /*<<< orphan*/  rtm_pid; scalar_t__ rtm_seq; int /*<<< orphan*/  rtm_version; int /*<<< orphan*/  rtm_type; } ;
struct netinfo6 {int rip6_plen; struct in6_addr rip6_dest; } ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* AF_INET6 ; 
 int BUFSIZ ; 
 scalar_t__ ESRCH ; 
 int Qflag ; 
 int FUNC0 (int) ; 
 int RTA_DST ; 
 int RTA_GATEWAY ; 
 int RTA_NETMASK ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int RTF_UP ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  RTM_VERSION ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,...) ; 
 char* FUNC2 () ; 
 char* FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nflag ; 
 int /*<<< orphan*/  pid ; 
 struct in6_addr* FUNC6 (int) ; 
 scalar_t__ rtlog ; 
 int /*<<< orphan*/  rtsock ; 
 scalar_t__ seq ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,int,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC11(struct netinfo6 *np, struct in6_addr *gw)
{
	u_char	buf[BUFSIZ], buf2[BUFSIZ];
	struct	rt_msghdr	*rtm;
	struct	sockaddr_in6	*sin6;
	int	len;

	FUNC4(AF_INET6, (void *)gw, (char *)buf2, sizeof(buf2));
	FUNC9(1, "DEL: %s/%d gw %s\n", FUNC3(&np->rip6_dest),
		np->rip6_plen, buf2);
	if (rtlog)
		FUNC1(rtlog, "%s: DEL: %s/%d gw %s\n",
			FUNC2(), FUNC3(&np->rip6_dest), np->rip6_plen, buf2);
	if (nflag)
		return 0;

	FUNC5(buf, 0, sizeof(buf));
	rtm = (struct rt_msghdr *)(void *)buf;
	rtm->rtm_type = RTM_DELETE;
	rtm->rtm_version = RTM_VERSION;
	rtm->rtm_seq = ++seq;
	rtm->rtm_pid = pid;
	rtm->rtm_flags = RTF_UP | RTF_GATEWAY;
	rtm->rtm_flags |= Qflag;
	if (np->rip6_plen == sizeof(struct in6_addr) * 8)
		rtm->rtm_flags |= RTF_HOST;
	rtm->rtm_addrs = RTA_DST | RTA_GATEWAY | RTA_NETMASK;
	sin6 = (struct sockaddr_in6 *)(void *)&buf[sizeof(struct rt_msghdr)];
	/* Destination */
	sin6->sin6_len = sizeof(struct sockaddr_in6);
	sin6->sin6_family = AF_INET6;
	sin6->sin6_addr = np->rip6_dest;
	sin6 = (struct sockaddr_in6 *)(void *)((char *)sin6 + FUNC0(sin6->sin6_len));
	/* Gateway */
	sin6->sin6_len = sizeof(struct sockaddr_in6);
	sin6->sin6_family = AF_INET6;
	sin6->sin6_addr = *gw;
	sin6 = (struct sockaddr_in6 *)(void *)((char *)sin6 + FUNC0(sin6->sin6_len));
	/* Netmask */
	sin6->sin6_len = sizeof(struct sockaddr_in6);
	sin6->sin6_family = AF_INET6;
	sin6->sin6_addr = *(FUNC6(np->rip6_plen));
	sin6 = (struct sockaddr_in6 *)(void *)((char *)sin6 + FUNC0(sin6->sin6_len));

	len = (char *)sin6 - (char *)buf;
	rtm->rtm_msglen = len;
	if (FUNC10(rtsock, buf, len) >= 0)
		return 0;

	if (errno == ESRCH) {
		FUNC8(0, "RTDEL: Route does not exist: %s/%d gw %s\n",
		    FUNC3(&np->rip6_dest), np->rip6_plen, buf2);
		if (rtlog)
			FUNC1(rtlog, "RTDEL: Route does not exist: %s/%d gw %s\n",
			    FUNC3(&np->rip6_dest), np->rip6_plen, buf2);
	} else {
		FUNC8(0, "Can not write to rtsock (delroute): %s\n",
		    FUNC7(errno));
		if (rtlog)
			FUNC1(rtlog, "\tCan not write to rtsock: %s\n",
			    FUNC7(errno));
	}
	return -1;
}