
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ ki_stat; int ki_wmesg; } ;
typedef int semid_t ;
typedef int pid_t ;
typedef int kvm_t ;


 int EBUSY ;
 int KERN_PROC_PID ;
 int O_RDONLY ;
 scalar_t__ SSLEEP ;
 int _POSIX2_LINE_MAX ;
 int exit (int ) ;
 int fail_err (char*,char*) ;
 int fail_errno (char*) ;
 int fork () ;
 int ksem_destroy (int ) ;
 int ksem_destroy_should_fail (int ,int ) ;
 scalar_t__ ksem_init (int *,int ) ;
 int ksem_post (int ) ;
 int ksem_wait (int ) ;
 int kvm_close (int *) ;
 char* kvm_geterr (int *) ;
 struct kinfo_proc* kvm_getprocs (int *,int ,int,int*) ;
 int * kvm_openfiles (int *,char*,int *,int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int usleep (int) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void
busy_destroy_test(void)
{
 char errbuf[_POSIX2_LINE_MAX];
 struct kinfo_proc *kp;
 semid_t id;
 pid_t pid;
 kvm_t *kd;
 int count;

 kd = kvm_openfiles(((void*)0), "/dev/null", ((void*)0), O_RDONLY, errbuf);
 if (kd == ((void*)0)) {
  fail_err("kvm_openfiles: %s", errbuf);
  return;
 }

 if (ksem_init(&id, 0) < 0) {
  fail_errno("ksem_init");
  kvm_close(kd);
  return;
 }

 pid = fork();
 switch (pid) {
 case -1:

  fail_errno("fork");
  ksem_destroy(id);
  kvm_close(kd);
  return;
 case 0:

  ksem_wait(id);
  exit(0);
 }





 for (;;) {
  kp = kvm_getprocs(kd, KERN_PROC_PID, pid, &count);
  if (kp == ((void*)0)) {
   fail_err("kvm_getprocs: %s", kvm_geterr(kd));
   kvm_close(kd);
   ksem_destroy(id);
   return;
  }
  if (kp->ki_stat == SSLEEP &&
      (strcmp(kp->ki_wmesg, "sem") == 0 ||
      strcmp(kp->ki_wmesg, "ksem") == 0))
   break;
  usleep(1000);
 }
 kvm_close(kd);

 ksem_destroy_should_fail(id, EBUSY);


 ksem_post(id);
 waitpid(pid, ((void*)0), 0);
 ksem_destroy(id);
}
