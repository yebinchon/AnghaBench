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
struct in6_addr {int dummy; } ;
struct in6_nbrinfo {struct in6_addr addr; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  nbi ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  SIOCGNBRINFO_IN6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct in6_nbrinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static struct in6_nbrinfo *
FUNC7(struct in6_addr *addr, int ifindex, int warning)
{
	static struct in6_nbrinfo nbi;
	int sock;

	if ((sock = FUNC5(AF_INET6, SOCK_DGRAM, 0)) < 0)
		FUNC2(1, "socket");

	FUNC0(&nbi, sizeof(nbi));
	FUNC3(ifindex, nbi.ifname);
	nbi.addr = *addr;
	if (FUNC4(sock, SIOCGNBRINFO_IN6, (caddr_t)&nbi) < 0) {
		if (warning)
			FUNC6("ioctl(SIOCGNBRINFO_IN6)");
		FUNC1(sock);
		return(NULL);
	}

	FUNC1(sock);
	return(&nbi);
}