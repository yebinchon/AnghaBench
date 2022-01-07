
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ ki_stat; } ;
typedef int pid_t ;
typedef int kp ;


 int ATF_REQUIRE (int) ;
 int CTL_KERN ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_PID ;
 scalar_t__ SZOMB ;
 scalar_t__ errno ;
 int nitems (int*) ;
 int sysctl (int*,int ,struct kinfo_proc*,size_t*,int *,int ) ;
 int usleep (int) ;

__attribute__((used)) static void
wait_for_zombie(pid_t pid)
{
 for (;;) {
  struct kinfo_proc kp;
  size_t len;
  int mib[4];

  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC;
  mib[2] = KERN_PROC_PID;
  mib[3] = pid;
  len = sizeof(kp);
  if (sysctl(mib, nitems(mib), &kp, &len, ((void*)0), 0) == -1) {
   ATF_REQUIRE(errno == ESRCH);
   break;
  }
  if (kp.ki_stat == SZOMB)
   break;
  usleep(5000);
 }
}
