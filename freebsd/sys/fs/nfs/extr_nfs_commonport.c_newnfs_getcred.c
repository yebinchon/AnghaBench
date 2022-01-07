
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int td_ucred; } ;


 struct ucred* crdup (int ) ;
 struct thread* curthread ;
 int newnfs_setroot (struct ucred*) ;

struct ucred *
newnfs_getcred(void)
{
 struct ucred *cred;
 struct thread *td = curthread;

 cred = crdup(td->td_ucred);
 newnfs_setroot(cred);
 return (cred);
}
