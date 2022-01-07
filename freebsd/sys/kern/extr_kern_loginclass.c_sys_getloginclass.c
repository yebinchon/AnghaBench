
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; } ;
struct loginclass {int lc_name; } ;
struct getloginclass_args {size_t namelen; int namebuf; } ;
struct TYPE_2__ {struct loginclass* cr_loginclass; } ;


 int ERANGE ;
 int copyout (int ,int ,size_t) ;
 int strlen (int ) ;

int
sys_getloginclass(struct thread *td, struct getloginclass_args *uap)
{
 struct loginclass *lc;
 size_t lcnamelen;

 lc = td->td_ucred->cr_loginclass;
 lcnamelen = strlen(lc->lc_name) + 1;
 if (lcnamelen > uap->namelen)
  return (ERANGE);
 return (copyout(lc->lc_name, uap->namebuf, lcnamelen));
}
