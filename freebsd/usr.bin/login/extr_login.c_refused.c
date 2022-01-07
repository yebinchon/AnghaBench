
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pw_name; } ;


 int LOG_NOTICE ;
 int SLEEP_EXIT ;
 int bail (int ,int) ;
 scalar_t__ hflag ;
 int hostname ;
 int printf (char*,char const*) ;
 TYPE_1__* pwd ;
 int syslog (int ,char*,int ,char const*,int ,...) ;
 int tty ;

__attribute__((used)) static void
refused(const char *msg, const char *rtype, int lout)
{

 if (msg != ((void*)0))
     printf("%s.\n", msg);
 if (hflag)
  syslog(LOG_NOTICE, "LOGIN %s REFUSED (%s) FROM %s ON TTY %s",
      pwd->pw_name, rtype, hostname, tty);
 else
  syslog(LOG_NOTICE, "LOGIN %s REFUSED (%s) ON TTY %s",
      pwd->pw_name, rtype, tty);
 if (lout)
  bail(SLEEP_EXIT, 1);
}
