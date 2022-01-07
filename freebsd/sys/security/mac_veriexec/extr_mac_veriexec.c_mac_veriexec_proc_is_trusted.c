
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {int dummy; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_LOCKED (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int VERIEXEC_TRUSTED ;
 int mac_veriexec_metadata_get_executable_flags (struct ucred*,struct proc*,int*,int ) ;

int
mac_veriexec_proc_is_trusted(struct ucred *cred, struct proc *p)
{
 int already_locked, error, flags;


 already_locked = PROC_LOCKED(p);
 if (!already_locked)
  PROC_LOCK(p);

 error = mac_veriexec_metadata_get_executable_flags(cred, p, &flags, 0);


 if (!already_locked)
  PROC_UNLOCK(p);


 if (error != 0)
  return (0);


 return ((flags & VERIEXEC_TRUSTED) == VERIEXEC_TRUSTED);
}
