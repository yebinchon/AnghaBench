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
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct llentry {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  sin6 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in6*,int) ; 
 struct llentry* FUNC3 (int /*<<< orphan*/ ,int,struct sockaddr*) ; 

struct llentry *
FUNC4(const struct in6_addr *addr6, int flags, struct ifnet *ifp)
{
	struct sockaddr_in6 sin6;
	struct llentry *ln;
	
	FUNC2(&sin6, sizeof(sin6));
	sin6.sin6_len = sizeof(struct sockaddr_in6);
	sin6.sin6_family = AF_INET6;
	sin6.sin6_addr = *addr6;

	FUNC0(ifp);

	ln = FUNC3(FUNC1(ifp), flags, (struct sockaddr *)&sin6);

	return (ln);
}