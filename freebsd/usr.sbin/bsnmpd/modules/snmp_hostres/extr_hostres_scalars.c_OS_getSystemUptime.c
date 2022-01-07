
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int kernel_boot_timestamp ;


 int CTL_KERN ;
 int HRDBG (char*,long long,long) ;
 int KERN_BOOTTIME ;
 int LOG_ERR ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int UINT32_MAX ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int kernel_boot ;
 int nitems (int*) ;
 int sysctl (int*,int ,struct timeval*,size_t*,int *,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
OS_getSystemUptime(uint32_t *ut)
{
 struct timeval right_now;
 uint64_t now;

 if (kernel_boot == 0) {

  struct timeval kernel_boot_timestamp;
  int mib[2] = { CTL_KERN, KERN_BOOTTIME };
  size_t len = sizeof(kernel_boot_timestamp);

  if (sysctl(mib, nitems(mib), &kernel_boot_timestamp,
      &len, ((void*)0), 0) == -1) {
   syslog(LOG_ERR, "sysctl KERN_BOOTTIME failed: %m");
   return (SNMP_ERR_GENERR);
  }

  HRDBG("boot timestamp from kernel: {%lld, %ld}",
      (long long)kernel_boot_timestamp.tv_sec,
      (long)kernel_boot_timestamp.tv_usec);

  kernel_boot = ((uint64_t)kernel_boot_timestamp.tv_sec * 100) +
      (kernel_boot_timestamp.tv_usec / 10000);
 }

 if (gettimeofday(&right_now, ((void*)0)) < 0) {
  syslog(LOG_ERR, "gettimeofday failed: %m");
  return (SNMP_ERR_GENERR);
 }
 now = ((uint64_t)right_now.tv_sec * 100) + (right_now.tv_usec / 10000);

 if (now - kernel_boot > UINT32_MAX)
  *ut = UINT32_MAX;
 else
  *ut = now - kernel_boot;

 return (SNMP_ERR_NOERROR);
}
