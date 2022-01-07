
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int cr_canseejailproc (struct ucred*,struct ucred*) ;
 int cr_canseeothergids (struct ucred*,struct ucred*) ;
 int cr_canseeotheruids (struct ucred*,struct ucred*) ;
 int mac_cred_check_visible (struct ucred*,struct ucred*) ;
 int prison_check (struct ucred*,struct ucred*) ;

int
cr_cansee(struct ucred *u1, struct ucred *u2)
{
 int error;

 if ((error = prison_check(u1, u2)))
  return (error);




 if ((error = cr_canseeotheruids(u1, u2)))
  return (error);
 if ((error = cr_canseeothergids(u1, u2)))
  return (error);
 if ((error = cr_canseejailproc(u1, u2)))
  return (error);
 return (0);
}
