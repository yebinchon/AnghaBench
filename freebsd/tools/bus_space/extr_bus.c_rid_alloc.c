
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {int fd; } ;


 int INT_MAX ;
 int nrids ;
 void* realloc (TYPE_1__*,int) ;
 TYPE_1__* ridtbl ;

__attribute__((used)) static int
rid_alloc(void)
{
 void *newtbl;
 int rid;

 for (rid = 0; rid < nrids; rid++) {
  if (ridtbl[rid].fd == -1)
   break;
 }
 if (rid == nrids) {
  nrids++;
  newtbl = realloc(ridtbl, sizeof(struct resource) * nrids);
  if (newtbl == ((void*)0)) {
   nrids--;
   return (-1);
  } else
   ridtbl = newtbl;
 }
 ridtbl[rid].fd = INT_MAX;
 return (rid);
}
