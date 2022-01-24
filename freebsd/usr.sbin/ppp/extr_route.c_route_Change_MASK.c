#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ncpaddr {int dummy; } ;
struct sticky_route {int type; struct ncpaddr gw; int /*<<< orphan*/  dst; struct sticky_route* next; } ;
struct TYPE_6__ {TYPE_1__* dns; } ;
struct TYPE_7__ {TYPE_2__ ns; } ;
struct TYPE_8__ {TYPE_3__ ipcp; } ;
struct bundle {TYPE_4__ ncp; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ INADDR_NONE ; 
 int ROUTE_DSTDNS0 ; 
 int ROUTE_DSTDNS1 ; 
 int ROUTE_DSTHISADDR ; 
 int ROUTE_DSTHISADDR6 ; 
 int ROUTE_DSTMYADDR ; 
 int ROUTE_DSTMYADDR6 ; 
 int ROUTE_GWHISADDR ; 
 int ROUTE_GWHISADDR6 ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct ncpaddr*,struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncpaddr*,struct ncpaddr const*) ; 
 scalar_t__ FUNC2 (struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ncpaddr*,int,int /*<<< orphan*/ ) ; 

void
FUNC6(struct bundle *bundle, struct sticky_route *r,
             const struct ncpaddr *me, const struct ncpaddr *peer)
{
  struct ncpaddr dst;

  for (; r; r = r->next) {
    FUNC3(&r->dst, &dst);
    if (FUNC2(me) == AF_INET) {
      if ((r->type & ROUTE_DSTMYADDR) && !FUNC1(&dst, me)) {
        FUNC5(bundle, RTM_DELETE, &r->dst, NULL, 1, 0);
        FUNC4(&r->dst, me);
        if (r->type & ROUTE_GWHISADDR)
          FUNC0(&r->gw, peer);
      } else if ((r->type & ROUTE_DSTHISADDR) && !FUNC1(&dst, peer)) {
        FUNC5(bundle, RTM_DELETE, &r->dst, NULL, 1, 0);
        FUNC4(&r->dst, peer);
        if (r->type & ROUTE_GWHISADDR)
          FUNC0(&r->gw, peer);
      } else if ((r->type & ROUTE_DSTDNS0) && !FUNC1(&dst, peer)) {
        if (bundle->ncp.ipcp.ns.dns[0].s_addr == INADDR_NONE)
          continue;
        FUNC5(bundle, RTM_DELETE, &r->dst, NULL, 1, 0);
        if (r->type & ROUTE_GWHISADDR)
          FUNC0(&r->gw, peer);
      } else if ((r->type & ROUTE_DSTDNS1) && !FUNC1(&dst, peer)) {
        if (bundle->ncp.ipcp.ns.dns[1].s_addr == INADDR_NONE)
          continue;
        FUNC5(bundle, RTM_DELETE, &r->dst, NULL, 1, 0);
        if (r->type & ROUTE_GWHISADDR)
          FUNC0(&r->gw, peer);
      } else if ((r->type & ROUTE_GWHISADDR) && !FUNC1(&r->gw, peer))
        FUNC0(&r->gw, peer);
#ifndef NOINET6
    } else if (FUNC2(me) == AF_INET6) {
      if ((r->type & ROUTE_DSTMYADDR6) && !FUNC1(&dst, me)) {
        FUNC5(bundle, RTM_DELETE, &r->dst, NULL, 1, 0);
        FUNC4(&r->dst, me);
        if (r->type & ROUTE_GWHISADDR)
          FUNC0(&r->gw, peer);
      } else if ((r->type & ROUTE_DSTHISADDR6) && !FUNC1(&dst, peer)) {
        FUNC5(bundle, RTM_DELETE, &r->dst, NULL, 1, 0);
        FUNC4(&r->dst, peer);
        if (r->type & ROUTE_GWHISADDR)
          FUNC0(&r->gw, peer);
      } else if ((r->type & ROUTE_GWHISADDR6) && !FUNC1(&r->gw, peer))
        FUNC0(&r->gw, peer);
#endif
    }
    FUNC5(bundle, RTM_ADD, &r->dst, &r->gw, 1, 0);
  }
}