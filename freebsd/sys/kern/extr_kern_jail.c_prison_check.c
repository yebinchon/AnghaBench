
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_prison; } ;


 int ESRCH ;
 scalar_t__ prison_ischild (scalar_t__,scalar_t__) ;

int
prison_check(struct ucred *cred1, struct ucred *cred2)
{

 return ((cred1->cr_prison == cred2->cr_prison ||
     prison_ischild(cred1->cr_prison, cred2->cr_prison)) ? 0 : ESRCH);
}
