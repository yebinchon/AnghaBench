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
struct sockaddr_in6 {int dummy; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 struct sockaddr_in6* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sockaddr *
FUNC3(in_port_t port, struct in_addr *addr_p)
{
	struct sockaddr_in sin;
	struct sockaddr_in6 *sin6_p;

	FUNC0(&sin, sizeof sin);
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_port = port;
	sin.sin_addr = *addr_p;

	sin6_p = FUNC2(sizeof *sin6_p, M_SONAME,
		M_WAITOK);
	FUNC1(&sin, sin6_p);

	return (struct sockaddr *)sin6_p;
}