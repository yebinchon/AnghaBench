
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct proc*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct proc*,int) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int proc_check_signal ;

int
mac_proc_check_signal(struct ucred *cred, struct proc *p, int signum)
{
 int error;

 PROC_LOCK_ASSERT(p, MA_OWNED);

 MAC_POLICY_CHECK_NOSLEEP(proc_check_signal, cred, p, signum);
 MAC_CHECK_PROBE3(proc_check_signal, error, cred, p, signum);

 return (error);
}
