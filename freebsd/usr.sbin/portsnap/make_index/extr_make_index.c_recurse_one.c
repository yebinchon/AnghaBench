
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t n_rdep; TYPE_1__* rdep; } ;
struct TYPE_9__ {TYPE_5__* p; } ;
struct TYPE_8__ {TYPE_5__* p; } ;
typedef TYPE_2__ DEP ;


 int err (int,char*) ;
 TYPE_2__* realloc (TYPE_2__*,size_t) ;
 int recurse (TYPE_5__*) ;

__attribute__((used)) static DEP *
recurse_one(DEP * d, size_t * nd)
{
 size_t i, j, k, n, N;

 N = n = *nd;
 for (i = 0; i < n; i++) {
  recurse(d[i].p);
  for (j = 0; j < d[i].p->n_rdep; j++) {
   for (k = 0; k < N; k++) {
    if (d[i].p->rdep[j].p == d[k].p)
     break;
   }
   if (k == N) {
    N++;
    if (N >= *nd) {
     *nd += *nd;
     d = realloc(d, *nd * sizeof(DEP));
     if (d == ((void*)0))
      err(1, "realloc(d)");
    }
    d[k].p = d[i].p->rdep[j].p;
   }
  }
 }
 *nd = N;

 return d;
}
