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
typedef  scalar_t__ uint32_t ;
struct sockaddr_in6 {int sin6_len; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_defrouter {scalar_t__ if_index; TYPE_1__ rtaddr; } ;
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int CTL_NET ; 
 int ICMPV6CTL_ND6_DRLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPPROTO_NONE ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct sockaddr_in6*,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(uint32_t ifindex, uint32_t linkid)
{
	static int probesock = -1;
	struct sockaddr_in6 dst;
	struct in6_defrouter *p, *ep;
	char *buf;
	size_t len;
	int mib[4];

	if (ifindex == 0)
		return (0);
	if (FUNC2(&probesock, IPPROTO_NONE) != 0)
		return (-1);

	mib[0] = CTL_NET;
	mib[1] = PF_INET6;
	mib[2] = IPPROTO_ICMPV6;
	mib[3] = ICMPV6CTL_ND6_DRLIST;
	if (FUNC7(mib, FUNC5(mib), NULL, &len, NULL, 0) < 0)
		return (-1);
	if (len == 0)
		return (0);

	FUNC4(&dst, 0, sizeof(dst));
	dst.sin6_family = AF_INET6;
	dst.sin6_len = sizeof(dst);

	buf = FUNC3(len);
	if (buf == NULL)
		return (-1);
	if (FUNC7(mib, FUNC5(mib), buf, &len, NULL, 0) < 0)
		return (-1);
	ep = (struct in6_defrouter *)(void *)(buf + len);
	for (p = (struct in6_defrouter *)(void *)buf; p < ep; p++) {
		if (ifindex != p->if_index)
			continue;
		if (!FUNC0(&p->rtaddr.sin6_addr))
			continue;
		dst.sin6_addr = p->rtaddr.sin6_addr;
		dst.sin6_scope_id = linkid;
		(void)FUNC6(probesock, &dst, ifindex, 1, NULL, 0);
	}
	FUNC1(buf);

	return (0);
}