
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_uid; scalar_t__ cr_prison; } ;


 int ESRCH ;
 int see_jail_proc ;

int
cr_canseejailproc(struct ucred *u1, struct ucred *u2)
{
 if (u1->cr_uid == 0)
  return (0);
 return (!see_jail_proc && u1->cr_prison != u2->cr_prison ? ESRCH : 0);
}
