
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {char const* ki_comm; } ;
typedef int proc ;
typedef scalar_t__ pid_t ;


 int CTL_KERN ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_PID ;
 scalar_t__ errno ;
 int nitems (int*) ;
 int sysctl (int*,int ,struct kinfo_proc*,size_t*,int *,int ) ;
 int warn (char*) ;

__attribute__((used)) static const char *
getprocname(pid_t pid)
{
 static struct kinfo_proc proc;
 size_t len;
 int mib[4];

 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_PID;
 mib[3] = (int)pid;
 len = sizeof(proc);
 if (sysctl(mib, nitems(mib), &proc, &len, ((void*)0), 0) == -1) {

  if (errno != ESRCH)
   warn("sysctl()");
  return ("??");
 }
 return (proc.ki_comm);
}
