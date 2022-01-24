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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct ip6_rthdr0 {int ip6r0_segleft; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  IPV6_RTHDR_TYPE_0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,struct addrinfo const*,struct addrinfo**) ; 
 int FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void
FUNC8()
{
	int	i, ret;
	char	buf[10240];
	struct addrinfo *res;
	struct addrinfo hints;

	FUNC7("test_rth_add", sizeof("test_rth_add\0"));

	if (NULL == FUNC5(buf, 10240, IPV6_RTHDR_TYPE_0, 127))
		FUNC0();
	FUNC6((void *)&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = AF_INET6;
	hints.ai_flags = AI_NUMERICHOST;
	if (0 != FUNC3("::1", NULL, (const struct addrinfo *)&hints, &res))
		FUNC0();
	for (i = 0; i < 127; i++)
		FUNC4((void *)buf,
		    &((struct sockaddr_in6 *)(res->ai_addr))->sin6_addr);
	FUNC1(127, ((struct ip6_rthdr0 *)buf)->ip6r0_segleft, 0,
	    "add 127 segments\0");

	ret = FUNC4((void *)buf,
	    &((struct sockaddr_in6 *)(res->ai_addr))->sin6_addr);
	FUNC1(-1, ret, 0, "add 128th segment to 127 segment header\0");

	FUNC2(res);
}