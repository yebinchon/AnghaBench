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
struct in6_addrpolicy {void* label; void* preced; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SIOCAADDRCTL_POLICY ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct in6_addrpolicy*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addrpolicy*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,struct in6_addrpolicy*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(char *prefix, char *prec, char *label)
{
	struct in6_addrpolicy p;
	int s;

	FUNC5(&p, 0, sizeof(p));

	if (FUNC6((const char *)prefix, &p))
		FUNC3(1, "bad prefix: %s", prefix);
	p.preced = FUNC0(prec);
	p.label = FUNC0(label);

	if ((s = FUNC7(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
		FUNC2(1, "socket(UDP)");
	if (FUNC4(s, SIOCAADDRCTL_POLICY, &p))
		FUNC2(1, "ioctl(SIOCAADDRCTL_POLICY)");

	FUNC1(s);
}