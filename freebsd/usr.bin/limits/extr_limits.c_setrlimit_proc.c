
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;
typedef int pid_t ;


 int CTL_KERN ;
 int EXIT_FAILURE ;
 int KERN_PROC ;
 int KERN_PROC_RLIMIT ;
 int err (int ,char*,int) ;
 int sysctl (int*,int,int *,int ,struct rlimit const*,int) ;

__attribute__((used)) static void
setrlimit_proc(pid_t pid, int resource, const struct rlimit *rlp)
{
    int error;
    int name[5];

    name[0] = CTL_KERN;
    name[1] = KERN_PROC;
    name[2] = KERN_PROC_RLIMIT;
    name[3] = pid;
    name[4] = resource;
    error = sysctl(name, 5, ((void*)0), 0, rlp, sizeof(*rlp));
    if (error == -1)
 err(EXIT_FAILURE, "sysctl: kern.proc.rlimit: %d", pid);
}
