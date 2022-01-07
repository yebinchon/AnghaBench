
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int RESTRICTED_SERVERS ;
 int bcmp (struct in_addr*,int *,int) ;
 int * restricted_addrs ;

int
verify(struct in_addr addr)
{
 int i;

 for (i = 0; i < RESTRICTED_SERVERS; i++)
  if (!bcmp(&addr, &restricted_addrs[i], sizeof(struct in_addr)))
   return(0);

 return(1);
}
