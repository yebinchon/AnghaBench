
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int CTL_KERN ;
 int HRDBG (char*,char*) ;
 int KERN_BOOTFILE ;
 int LOG_ERR ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 char* boot_line ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;
 int syslog (int ,char*) ;

int
OS_getSystemInitialLoadParameters(u_char **params)
{

 if (boot_line == ((void*)0)) {
  int mib[2] = { CTL_KERN, KERN_BOOTFILE };
  char *buf;
  size_t buf_len = 0;


  if (sysctl(mib, 2, ((void*)0), &buf_len, ((void*)0), 0) != 0) {
   syslog(LOG_ERR,
       "sysctl({CTL_KERN,KERN_BOOTFILE}) failed: %m");
   return (SNMP_ERR_GENERR);
  }

  if ((buf = malloc(buf_len)) == ((void*)0)) {
   syslog(LOG_ERR, "malloc failed");
   return (SNMP_ERR_GENERR);
  }
  if (sysctl(mib, 2, buf, &buf_len, ((void*)0), 0)) {
   syslog(LOG_ERR,
       "sysctl({CTL_KERN,KERN_BOOTFILE}) failed: %m");
   free(buf);
   return (SNMP_ERR_GENERR);
  }

  boot_line = buf;
  HRDBG("kernel boot file: %s", boot_line);
 }

 *params = boot_line;
 return (SNMP_ERR_NOERROR);
}
