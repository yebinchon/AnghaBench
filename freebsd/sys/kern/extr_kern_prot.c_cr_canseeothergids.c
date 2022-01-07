
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ngroups; int * cr_groups; } ;


 int ESRCH ;
 int PRIV_SEEOTHERGIDS ;
 scalar_t__ groupmember (int ,struct ucred*) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int see_other_gids ;

int
cr_canseeothergids(struct ucred *u1, struct ucred *u2)
{
 int i, match;

 if (!see_other_gids) {
  match = 0;
  for (i = 0; i < u1->cr_ngroups; i++) {
   if (groupmember(u1->cr_groups[i], u2))
    match = 1;
   if (match)
    break;
  }
  if (!match) {
   if (priv_check_cred(u1, PRIV_SEEOTHERGIDS) != 0)
    return (ESRCH);
  }
 }
 return (0);
}
