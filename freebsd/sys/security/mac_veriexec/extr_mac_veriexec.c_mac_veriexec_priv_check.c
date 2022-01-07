
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int EPERM ;

 int VERIEXEC_STATE_ENFORCE ;
 int curproc ;
 int mac_veriexec_proc_is_trusted (struct ucred*,int ) ;
 int mac_veriexec_state ;

__attribute__((used)) static int
mac_veriexec_priv_check(struct ucred *cred, int priv)
{


 if ((mac_veriexec_state & VERIEXEC_STATE_ENFORCE) == 0)
  return (0);

 switch (priv) {
 case 128:
  if (!mac_veriexec_proc_is_trusted(cred, curproc))
   return (EPERM);
  break;
 default:
  break;
 }
 return (0);
}
