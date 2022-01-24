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
struct jail {char* path; char* hostname; char* jailname; int ip4s; int ip6s; struct in6_addr* ip6; struct in_addr* ip4; int /*<<< orphan*/  version; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  j ;

/* Variables and functions */
 struct in6_addr IN6ADDR_LOOPBACK_INIT ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  JAIL_API_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct jail*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct jail*) ; 

__attribute__((used)) static void
FUNC4(const char *test)
{
	struct jail j;
	struct in_addr ia4;
#ifdef INET6
	struct in6_addr ia6 = IN6ADDR_LOOPBACK_INIT;
#endif

	FUNC0(&j, sizeof(j));
	j.version = JAIL_API_VERSION;
	j.path = "/";
	j.hostname = "test";
	j.jailname = "regressions/priv";
	ia4.s_addr = FUNC2(INADDR_LOOPBACK);
	j.ip4s = 1;
	j.ip4 = &ia4;
#ifdef INET6
	j.ip6s = 1;
	j.ip6 = &ia6;
#endif
	if (FUNC3(&j) < 0)
		FUNC1(-1, "test %s: jail", test);
}