
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int * cr_prison; } ;


 int prison0 ;

int
jailed(struct ucred *cred)
{

 return (cred->cr_prison != &prison0);
}
