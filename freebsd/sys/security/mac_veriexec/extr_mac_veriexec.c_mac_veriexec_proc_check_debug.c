
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {int dummy; } ;


 int EACCES ;
 int VERIEXEC_NOTRACE ;
 int VERIEXEC_STATE_ENFORCE ;
 int mac_veriexec_metadata_get_executable_flags (struct ucred*,struct proc*,int*,int ) ;
 int mac_veriexec_state ;

__attribute__((used)) static int
mac_veriexec_proc_check_debug(struct ucred *cred, struct proc *p)
{
 int error, flags;


 if ((mac_veriexec_state & VERIEXEC_STATE_ENFORCE) == 0)
  return (0);

 error = mac_veriexec_metadata_get_executable_flags(cred, p, &flags, 0);
 if (error != 0)
  return (0);

 return ((flags & VERIEXEC_NOTRACE) ? EACCES : 0);
}
