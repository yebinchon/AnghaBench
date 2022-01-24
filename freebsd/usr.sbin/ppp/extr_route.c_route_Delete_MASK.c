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
struct sticky_route {int type; struct sticky_route* next; int /*<<< orphan*/  dst; } ;
struct ncprange {int dummy; } ;

/* Variables and functions */
 int ROUTE_DSTANY ; 
 int /*<<< orphan*/  FUNC0 (struct sticky_route*) ; 
 scalar_t__ FUNC1 (struct ncprange const*,int /*<<< orphan*/ *) ; 

void
FUNC2(struct sticky_route **rp, int type, const struct ncprange *dst)
{
  struct sticky_route *r;
  int dsttype = type & ROUTE_DSTANY;

  for (; *rp; rp = &(*rp)->next) {
    if ((dsttype && dsttype == ((*rp)->type & ROUTE_DSTANY)) ||
        (!dsttype && FUNC1(dst, &(*rp)->dst))) {
      r = *rp;
      *rp = r->next;
      FUNC0(r);
      break;
    }
  }
}