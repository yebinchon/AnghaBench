#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
union vxlan_sockaddr {struct sockaddr sa; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {struct in_addr sin_addr; } ;
struct TYPE_3__ {struct in6_addr sin6_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (struct in6_addr const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sockaddr const*) ; 
 TYPE_1__* FUNC4 (struct sockaddr const*) ; 

__attribute__((used)) static int
FUNC5(const union vxlan_sockaddr *vxladdr)
{
	const struct sockaddr *sa;
	int mc;

	sa = &vxladdr->sa;

	if (sa->sa_family == AF_INET) {
		const struct in_addr *in4 = &FUNC3(sa)->sin_addr;
		mc = FUNC1(FUNC2(in4->s_addr));
	} else if (sa->sa_family == AF_INET6) {
		const struct in6_addr *in6 = &FUNC4(sa)->sin6_addr;
		mc = FUNC0(in6);
	} else
		mc = -1;

	return (mc);
}