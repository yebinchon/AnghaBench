
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_ooffset_t ;
struct ucred {int dummy; } ;
struct TYPE_4__ {struct ucred* p_ucred; } ;


 int PROC_LOCK (TYPE_1__*) ;
 int PROC_UNLOCK (TYPE_1__*) ;
 TYPE_1__* curproc ;
 int swap_release_by_cred (int ,struct ucred*) ;

void
swap_release(vm_ooffset_t decr)
{
 struct ucred *cred;

 PROC_LOCK(curproc);
 cred = curproc->p_ucred;
 swap_release_by_cred(decr, cred);
 PROC_UNLOCK(curproc);
}
