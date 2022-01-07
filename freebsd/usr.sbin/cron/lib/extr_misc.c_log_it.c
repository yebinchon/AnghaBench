
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef int TIME_T ;
typedef int PID_T ;


 scalar_t__ DebugFlags ;
 int F_SETFD ;
 int LOG_CRON ;
 int LOG_FILE ;
 int LOG_INFO ;
 int LOG_PID ;
 scalar_t__ LogFD ;
 scalar_t__ MAX_TEMPSTR ;
 scalar_t__ OK ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int ProgramName ;
 scalar_t__ STDERR ;
 int TRUE ;
 int fcntl (scalar_t__,int ,int) ;
 int fprintf (int ,char*,char*,int,char*,char const*) ;
 int free (char*) ;
 struct tm* localtime (int *) ;
 char* malloc (scalar_t__) ;
 scalar_t__ open (int ,int,int) ;
 int openlog (int ,int ,...) ;
 int sprintf (char*,char*,char*,int,int,int,int,int,int,char*,char const*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 int syslog (int ,char*,char*,char*,char const*) ;
 int time (int ) ;
 int warn (char*,int ) ;
 int warnx (char*) ;
 scalar_t__ write (scalar_t__,char*,scalar_t__) ;

void
log_it(char *username, int xpid, char *event, const char *detail)
{
}
