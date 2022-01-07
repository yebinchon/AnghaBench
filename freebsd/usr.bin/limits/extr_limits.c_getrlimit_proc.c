
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
 int errx (int ,char*) ;
 int sysctl (int*,int,struct rlimit*,size_t*,int *,int ) ;

__attribute__((used)) static void
getrlimit_proc(pid_t pid, int resource, struct rlimit *rlp)
{
    int error;
    int name[5];
    size_t len;

    name[0] = CTL_KERN;
    name[1] = KERN_PROC;
    name[2] = KERN_PROC_RLIMIT;
    name[3] = pid;
    name[4] = resource;
    len = sizeof(*rlp);
    error = sysctl(name, 5, rlp, &len, ((void*)0), 0);
    if (error == -1)
 err(EXIT_FAILURE, "sysctl: kern.proc.rlimit: %d", pid);
    if (len != sizeof(*rlp))
 errx(EXIT_FAILURE, "sysctl() returns wrong size");
}
