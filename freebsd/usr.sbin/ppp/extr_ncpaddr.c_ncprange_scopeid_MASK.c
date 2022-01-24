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
typedef  int /*<<< orphan*/  u_short ;
struct in6_addr {int /*<<< orphan*/ * s6_addr; } ;
struct ncprange {scalar_t__ ncprange_family; struct in6_addr ncprange_ip6addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 

int
FUNC3(const struct ncprange *range)
{
  const struct in6_addr *sin6;
  int scopeid = -1;

  if (range->ncprange_family == AF_INET6) {
    sin6 = &range->ncprange_ip6addr;
    if (FUNC0(sin6) || FUNC1(sin6))
      if ((scopeid = FUNC2(*(const u_short *)&sin6->s6_addr[2])) == 0)
        scopeid = -1;
  }

  return scopeid;
}