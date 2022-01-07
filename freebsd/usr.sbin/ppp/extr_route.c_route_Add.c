
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sticky_route {int type; int gw; int dst; struct sticky_route* next; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;


 int LogERROR ;
 int ROUTE_DSTANY ;
 int free (struct sticky_route*) ;
 int log_Printf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int ncpaddr_copy (int *,struct ncpaddr const*) ;
 int ncprange_copy (int *,struct ncprange const*) ;
 scalar_t__ ncprange_equal (int *,struct ncprange const*) ;

void
route_Add(struct sticky_route **rp, int type, const struct ncprange *dst,
          const struct ncpaddr *gw)
{
  struct sticky_route *r;
  int dsttype = type & ROUTE_DSTANY;

  r = ((void*)0);
  while (*rp) {
    if ((dsttype && dsttype == ((*rp)->type & ROUTE_DSTANY)) ||
        (!dsttype && ncprange_equal(&(*rp)->dst, dst))) {

      free(r);
      r = *rp;
      *rp = r->next;
    } else
      rp = &(*rp)->next;
  }

  if (r == ((void*)0)) {
    r = (struct sticky_route *)malloc(sizeof(struct sticky_route));
    if (r == ((void*)0)) {
      log_Printf(LogERROR, "route_Add: Out of memory!\n");
      return;
    }
  }
  r->type = type;
  r->next = ((void*)0);
  ncprange_copy(&r->dst, dst);
  ncpaddr_copy(&r->gw, gw);
  *rp = r;
}
