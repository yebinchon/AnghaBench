
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFSPRI ;
 int IGN_CONS ;
 long INT_MAX ;
 int LOG_CONSOLE ;
 int LOG_FACMASK ;
 int LOG_PRIMASK ;
 int LocalHostName ;
 int SYNC_FILE ;
 scalar_t__ errno ;
 int logmsg (int,int *,int ,char*,int *,int *,int *,char*,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static void
printsys(char *msg)
{
 char *p, *q;
 long n;
 int flags, isprintf, pri;

 flags = SYNC_FILE;
 p = msg;
 pri = DEFSPRI;
 isprintf = 1;
 if (*p == '<') {
  errno = 0;
  n = strtol(p + 1, &q, 10);
  if (*q == '>' && n >= 0 && n < INT_MAX && errno == 0) {
   p = q + 1;
   pri = n;
   isprintf = 0;
  }
 }




 if (isprintf || (pri & LOG_FACMASK) == LOG_CONSOLE)
  flags |= IGN_CONS;
 if (pri &~ (LOG_FACMASK|LOG_PRIMASK))
  pri = DEFSPRI;
 logmsg(pri, ((void*)0), LocalHostName, "kernel", ((void*)0), ((void*)0), ((void*)0), p, flags);
}
