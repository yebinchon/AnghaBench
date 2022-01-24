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
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in6*,int) ; 
 struct sockaddr_in6* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in6*) ; 

struct sockaddr *
FUNC3(in_port_t port, struct in6_addr *addr_p)
{
	struct sockaddr_in6 *sin6;

	sin6 = FUNC1(sizeof *sin6, M_SONAME, M_WAITOK);
	FUNC0(sin6, sizeof *sin6);
	sin6->sin6_family = AF_INET6;
	sin6->sin6_len = sizeof(*sin6);
	sin6->sin6_port = port;
	sin6->sin6_addr = *addr_p;
	(void)FUNC2(sin6); /* XXX: should catch errors */

	return (struct sockaddr *)sin6;
}