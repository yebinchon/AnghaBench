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
struct sticky_route {int type; int /*<<< orphan*/  gw; int /*<<< orphan*/  dst; struct sticky_route* next; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogERROR ; 
 int ROUTE_DSTANY ; 
 int /*<<< orphan*/  FUNC0 (struct sticky_route*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ncprange const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct ncprange const*) ; 

void
FUNC6(struct sticky_route **rp, int type, const struct ncprange *dst,
          const struct ncpaddr *gw)
{
  struct sticky_route *r;
  int dsttype = type & ROUTE_DSTANY;

  r = NULL;
  while (*rp) {
    if ((dsttype && dsttype == ((*rp)->type & ROUTE_DSTANY)) ||
        (!dsttype && FUNC5(&(*rp)->dst, dst))) {
      /* Oops, we already have this route - unlink it */
      FUNC0(r);			/* impossible really  */
      r = *rp;
      *rp = r->next;
    } else
      rp = &(*rp)->next;
  }

  if (r == NULL) {
    r = (struct sticky_route *)FUNC2(sizeof(struct sticky_route));
    if (r == NULL) {
      FUNC1(LogERROR, "route_Add: Out of memory!\n");
      return;
    }
  }
  r->type = type;
  r->next = NULL;
  FUNC4(&r->dst, dst);
  FUNC3(&r->gw, gw);
  *rp = r;
}