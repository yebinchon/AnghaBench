
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mp ;


 int CTL_KERN ;
 int KERN_MAXPROC ;
 int LOG_ERR ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int max_proc ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
OS_getSystemMaxProcesses(uint32_t *mproc)
{

 if (max_proc == 0) {
  int mib[2] = { CTL_KERN, KERN_MAXPROC };
  int mp;
  size_t len = sizeof(mp);

  if (sysctl(mib, 2, &mp, &len, ((void*)0), 0) == -1) {
   syslog(LOG_ERR, "sysctl KERN_MAXPROC failed: %m");
   return (SNMP_ERR_GENERR);
  }
  max_proc = mp;
 }

 *mproc = max_proc;
 return (SNMP_ERR_NOERROR);
}
