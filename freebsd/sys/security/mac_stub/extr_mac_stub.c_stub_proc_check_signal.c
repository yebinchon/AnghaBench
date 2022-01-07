
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {int dummy; } ;



__attribute__((used)) static int
stub_proc_check_signal(struct ucred *cred, struct proc *p, int signum)
{

 return (0);
}
