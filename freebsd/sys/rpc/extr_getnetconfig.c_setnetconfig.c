
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;


 int M_RPC ;
 int M_WAITOK ;
 struct netconfig** malloc (int,int ,int ) ;
 struct netconfig* netconfigs ;

void *
setnetconfig(void)
{
 struct netconfig **nconfp;

 nconfp = malloc(sizeof(struct netconfig *), M_RPC, M_WAITOK);
 *nconfp = netconfigs;

 return ((void *) nconfp);
}
