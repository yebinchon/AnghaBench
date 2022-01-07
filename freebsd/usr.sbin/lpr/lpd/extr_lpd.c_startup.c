
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* printer; } ;


 int LOG_INFO ;
 int LOG_WARNING ;
 scalar_t__ ckqueue (struct printer*) ;
 int firstprinter (struct printer*,int*) ;
 int fork () ;
 int lastprinter () ;
 scalar_t__ lflag ;
 int mcleanup (int ) ;
 int nextprinter (struct printer*,int*) ;
 int printjob (struct printer*) ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static void
startup(void)
{
 int pid, status, more;
 struct printer myprinter, *pp = &myprinter;

 more = firstprinter(pp, &status);
 if (status)
  goto errloop;
 while (more) {
  if (ckqueue(pp) <= 0) {
   goto next;
  }
  if (lflag)
   syslog(LOG_INFO, "lpd startup: work for %s",
       pp->printer);
  if ((pid = fork()) < 0) {
   syslog(LOG_WARNING, "lpd startup: cannot fork for %s",
       pp->printer);
   mcleanup(0);
  }
  if (pid == 0) {
   lastprinter();
   printjob(pp);

  }
  do {
next:
   more = nextprinter(pp, &status);
errloop:
   if (status)
    syslog(LOG_WARNING,
        "lpd startup: printcap entry for %s has errors, skipping",
        pp->printer ? pp->printer : "<noname?>");
  } while (more && status);
 }
}
