
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int LOG_ERR ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int settimeofday (struct timeval const*,int *) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
OS_setSystemDate(const struct timeval *timeval_to_set)
{
 if (settimeofday(timeval_to_set, ((void*)0)) == -1) {
  syslog(LOG_ERR, "settimeofday failed: %m");
  return (SNMP_ERR_GENERR);
 }
 return (SNMP_ERR_NOERROR);
}
