
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sticky_route {int type; struct sticky_route* next; int dst; } ;
struct ncprange {int dummy; } ;


 int ROUTE_DSTANY ;
 int free (struct sticky_route*) ;
 scalar_t__ ncprange_equal (struct ncprange const*,int *) ;

void
route_Delete(struct sticky_route **rp, int type, const struct ncprange *dst)
{
  struct sticky_route *r;
  int dsttype = type & ROUTE_DSTANY;

  for (; *rp; rp = &(*rp)->next) {
    if ((dsttype && dsttype == ((*rp)->type & ROUTE_DSTANY)) ||
        (!dsttype && ncprange_equal(dst, &(*rp)->dst))) {
      r = *rp;
      *rp = r->next;
      free(r);
      break;
    }
  }
}
