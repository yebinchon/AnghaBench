
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_AUTHPRIV ;
 int LOG_NOTICE ;
 int failures ;
 scalar_t__ hflag ;
 int hostname ;
 int syslog (int,char*,int,char*,int ,...) ;
 int tty ;

__attribute__((used)) static void
badlogin(char *name)
{

 if (failures == 0)
  return;
 if (hflag) {
  syslog(LOG_NOTICE, "%d LOGIN FAILURE%s FROM %s",
      failures, failures > 1 ? "S" : "", hostname);
  syslog(LOG_AUTHPRIV|LOG_NOTICE,
      "%d LOGIN FAILURE%s FROM %s, %s",
      failures, failures > 1 ? "S" : "", hostname, name);
 } else {
  syslog(LOG_NOTICE, "%d LOGIN FAILURE%s ON %s",
      failures, failures > 1 ? "S" : "", tty);
  syslog(LOG_AUTHPRIV|LOG_NOTICE,
      "%d LOGIN FAILURE%s ON %s, %s",
      failures, failures > 1 ? "S" : "", tty, name);
 }
 failures = 0;
}
