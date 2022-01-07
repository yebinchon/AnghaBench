
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct inpcb {int inp_cred; } ;


 int ENOENT ;
 int INP_LOCK_ASSERT (struct inpcb*) ;
 scalar_t__ cr_canseeothergids (struct ucred*,int ) ;
 scalar_t__ cr_canseeotheruids (struct ucred*,int ) ;
 int mac_inpcb_check_visible (struct ucred*,struct inpcb*) ;
 int prison_check (struct ucred*,int ) ;

int
cr_canseeinpcb(struct ucred *cred, struct inpcb *inp)
{
 int error;

 error = prison_check(cred, inp->inp_cred);
 if (error)
  return (ENOENT);






 if (cr_canseeotheruids(cred, inp->inp_cred))
  return (ENOENT);
 if (cr_canseeothergids(cred, inp->inp_cred))
  return (ENOENT);

 return (0);
}
