
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_ruid; } ;


 int ESRCH ;
 int PRIV_SEEOTHERUIDS ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int see_other_uids ;

int
cr_canseeotheruids(struct ucred *u1, struct ucred *u2)
{

 if (!see_other_uids && u1->cr_ruid != u2->cr_ruid) {
  if (priv_check_cred(u1, PRIV_SEEOTHERUIDS) != 0)
   return (ESRCH);
 }
 return (0);
}
