
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int jailed (struct ucred*) ;
 scalar_t__ prison_owns_vnet (struct ucred*) ;

int
jailed_without_vnet(struct ucred *cred)
{

 if (!jailed(cred))
  return (0);





 return (1);
}
