
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sticky_route {struct sticky_route* next; } ;


 int free (struct sticky_route*) ;

void
route_DeleteAll(struct sticky_route **rp)
{
  struct sticky_route *r, *rn;

  for (r = *rp; r; r = rn) {
    rn = r->next;
    free(r);
  }
  *rp = ((void*)0);
}
