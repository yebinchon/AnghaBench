
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {char* ki_comm; } ;
typedef int pid_t ;
typedef int newkp ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PID ;
 char* strdup (char*) ;
 int sysctl (int*,int,struct kinfo_proc*,size_t*,int *,int ) ;
 int xo_warn (char*) ;

__attribute__((used)) static char *
bpf_pidname(pid_t pid)
{
 struct kinfo_proc newkp;
 int error, mib[4];
 size_t size;

 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_PID;
 mib[3] = pid;
 size = sizeof(newkp);
 error = sysctl(mib, 4, &newkp, &size, ((void*)0), 0);
 if (error < 0) {
  xo_warn("kern.proc.pid failed");
  return (strdup("??????"));
 }
 return (strdup(newkp.ki_comm));
}
