
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_CRIT ;
 scalar_t__ errno ;
 int exit (int) ;
 int logit (int ,char*,char const*,...) ;
 char const* strerror (scalar_t__) ;

void
fatal(const char *emsg)
{
 if (emsg == ((void*)0))
  logit(LOG_CRIT, "fatal: %s", strerror(errno));
 else
  if (errno)
   logit(LOG_CRIT, "fatal: %s: %s",
       emsg, strerror(errno));
  else
   logit(LOG_CRIT, "fatal: %s", emsg);

 exit(1);
}
