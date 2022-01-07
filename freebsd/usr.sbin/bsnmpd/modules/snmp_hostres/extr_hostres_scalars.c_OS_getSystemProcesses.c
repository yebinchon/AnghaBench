
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KERN_PROC_PROC ;
 int LOG_ERR ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int * hr_kd ;
 int * kvm_getprocs (int *,int ,int ,int*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
OS_getSystemProcesses(uint32_t *proc_count)
{
 int pc;

 if (hr_kd == ((void*)0))
  return (SNMP_ERR_GENERR);

 if (kvm_getprocs(hr_kd, KERN_PROC_PROC, 0, &pc) == ((void*)0)) {
  syslog(LOG_ERR, "kvm_getprocs failed: %m");
  return (SNMP_ERR_GENERR);
 }

 *proc_count = pc;
 return (SNMP_ERR_NOERROR);
}
