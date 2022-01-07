
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int printer; int lp; scalar_t__ rw; } ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int O_RDWR ;
 int O_WRONLY ;
 int delay (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ isatty (scalar_t__) ;
 scalar_t__ open (int ,int ) ;
 scalar_t__ pfd ;
 int pstatus (struct printer const*,char*,int ) ;
 int setty (struct printer const*) ;
 int sleep (int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
opentty(const struct printer *pp)
{
 register int i;

 for (i = 1; ; i = i < 32 ? i << 1 : i) {
  pfd = open(pp->lp, pp->rw ? O_RDWR : O_WRONLY);
  if (pfd >= 0) {
   delay(500);
   break;
  }
  if (errno == ENOENT) {
   syslog(LOG_ERR, "%s: %m", pp->lp);
   exit(1);
  }
  if (i == 1)
   pstatus(pp,
    "waiting for %s to become ready (offline?)",
    pp->printer);
  sleep(i);
 }
 if (isatty(pfd))
  setty(pp);
 pstatus(pp, "%s is ready and printing", pp->printer);
}
