
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int time_t ;
struct tm {int dummy; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct snmp_value {int dummy; } ;


 int LOG_ERR ;
 int SNMP_ERR_GENERR ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int * localtime_r (int *,struct tm*) ;
 int make_date_time (int *,struct tm*,int) ;
 int string_get (struct snmp_value*,int *,int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
OS_getSystemDate(struct snmp_value *value)
{
 u_char s_date_time[11];
 struct tm tloc_tm;
 time_t tloc_time_t;
 struct timeval right_now;
 int string_len;

 if (gettimeofday(&right_now, ((void*)0)) < 0) {
  syslog(LOG_ERR, "gettimeofday failed: %m");
  return (SNMP_ERR_GENERR);
 }

 tloc_time_t = right_now.tv_sec;

 if (localtime_r(&tloc_time_t, &tloc_tm) == ((void*)0)) {
  syslog(LOG_ERR, "localtime_r() failed: %m ");
  return (SNMP_ERR_GENERR);
 }

 string_len = make_date_time(s_date_time, &tloc_tm,
     right_now.tv_usec / 100000);

 return (string_get(value, s_date_time, string_len));
}
