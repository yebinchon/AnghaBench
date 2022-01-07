
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int dummy; } ;


 int STAILQ_INSERT_TAIL (int *,struct peer*,int ) ;
 struct peer* calloc (int,int) ;
 int err (int,char*) ;
 int next ;
 int pqueue ;

__attribute__((used)) static int
addpeer(struct peer *pe0)
{
 struct peer *pe;

 pe = calloc(1, sizeof(*pe));
 if (pe == ((void*)0))
  err(1, "malloc failed");
 *pe = *pe0;
 STAILQ_INSERT_TAIL(&pqueue, pe, next);

 return (0);
}
