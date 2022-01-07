
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int LOG_ERR ;
 int LOG_SYSLOG ;
 int LocalHostName ;
 int dprintf (char*,char*) ;
 scalar_t__ errno ;
 int logmsg (int,int *,int ,char*,int *,int *,int *,char const*,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void
logerror(const char *msg)
{
 char buf[512];
 static int recursed = 0;


 if (recursed)
  return;
 recursed++;
 if (errno != 0) {
  (void)snprintf(buf, sizeof(buf), "%s: %s", msg,
      strerror(errno));
  msg = buf;
 }
 errno = 0;
 dprintf("%s\n", buf);
 logmsg(LOG_SYSLOG|LOG_ERR, ((void*)0), LocalHostName, "syslogd", ((void*)0), ((void*)0),
     ((void*)0), msg, 0);
 recursed--;
}
