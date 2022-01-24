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
struct in6_addrpolicy {int dummy; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SIOCDADDRCTL_POLICY ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct in6_addrpolicy*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addrpolicy*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,struct in6_addrpolicy*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(char *prefix)
{
	struct in6_addrpolicy p;
	int s;

	FUNC4(&p, 0, sizeof(p));

	if (FUNC5((const char *)prefix, &p))
		FUNC2(1, "bad prefix: %s", prefix);

	if ((s = FUNC6(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
		FUNC1(1, "socket(UDP)");
	if (FUNC3(s, SIOCDADDRCTL_POLICY, &p))
		FUNC1(1, "ioctl(SIOCDADDRCTL_POLICY)");

	FUNC0(s);
}