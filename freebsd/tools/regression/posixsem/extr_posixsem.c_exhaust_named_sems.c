
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsems_max ;
typedef int buffer ;


 int CSTAT_CLASS (int) ;
 int CSTAT_ERROR (int) ;
 char* TEST_PATH ;
 scalar_t__ child_worker (int ,void*,int*) ;
 int errno ;
 int exhaust_named_child ;
 int fail_err (char*,int) ;
 int fail_errno (char*) ;
 int ksem_unlink (char*) ;
 int pass () ;
 int snprintf (char*,int,char*,char*,int) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
exhaust_named_sems(void)
{
 char buffer[64];
 size_t len;
 int i, nsems_max, stat;

 len = sizeof(nsems_max);
 if (sysctlbyname("p1003_1b.sem_nsems_max", &nsems_max, &len, ((void*)0), 0) <
     0) {
  fail_errno("sysctl(p1003_1b.sem_nsems_max)");
  return;
 }

 if (child_worker(exhaust_named_child, (void *)(uintptr_t)nsems_max,
     &stat) < 0)
  return;
 errno = CSTAT_ERROR(stat);
 switch (CSTAT_CLASS(stat)) {
 case 0:
  pass();
  break;
 case 1:
  fail_errno("ksem_open");
  break;
 case 2:
  fail_err("Limit of %d semaphores not enforced", nsems_max);
  break;
 default:
  fail_err("bad child state %#x", stat);
  break;
 }


 for (i = 0; i < nsems_max + 1; i++) {
  snprintf(buffer, sizeof(buffer), "%s%d", TEST_PATH, i);
  ksem_unlink(buffer);
 }
}
