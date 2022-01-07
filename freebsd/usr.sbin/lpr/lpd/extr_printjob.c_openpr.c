
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char** filters; int printer; scalar_t__ remote; scalar_t__* lp; } ;


 int DOABORT ;
 int LOG_ERR ;
 size_t LPF_INPUT ;
 size_t LPF_OUTPUT ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TFILENAME ;
 int close (int) ;
 int closeallfds (int) ;
 int closelog () ;
 scalar_t__ dofork (struct printer const*,int ) ;
 int dup2 (int,int ) ;
 int execl (char*,char*,int ,int ,char*) ;
 int exit (int) ;
 int length ;
 int mkstemp (int ) ;
 scalar_t__ of_pid ;
 int ofd ;
 int opennet (struct printer const*) ;
 int openrem (struct printer const*) ;
 int opentty (struct printer const*) ;
 int pfd ;
 int pipe (int*) ;
 int * strchr (scalar_t__*,char) ;
 int strcpy (int ,int ) ;
 char* strrchr (char*,char) ;
 int syslog (int ,char*,int ,...) ;
 int tfd ;
 int tfile ;
 int width ;

__attribute__((used)) static void
openpr(const struct printer *pp)
{
 int p[2];
 char *cp;

 if (pp->remote) {
  openrem(pp);
  ofd = -1;
  of_pid = 0;
  return;
 } else if (*pp->lp) {
  if (strchr(pp->lp, '@') != ((void*)0))
   opennet(pp);
  else
   opentty(pp);
 } else {
  syslog(LOG_ERR, "%s: no line printer device or host name",
      pp->printer);
  exit(1);
 }




 if (pp->filters[LPF_OUTPUT] && !pp->filters[LPF_INPUT] && !of_pid) {
  pipe(p);
  if (pp->remote) {
   strcpy(tfile, TFILENAME);
   tfd = mkstemp(tfile);
  }
  if ((of_pid = dofork(pp, DOABORT)) == 0) {
   dup2(p[0], STDIN_FILENO);

   dup2(pp->remote ? tfd : pfd, STDOUT_FILENO);
   closelog();
   closeallfds(3);
   if ((cp = strrchr(pp->filters[LPF_OUTPUT], '/')) == ((void*)0))
    cp = pp->filters[LPF_OUTPUT];
   else
    cp++;
   execl(pp->filters[LPF_OUTPUT], cp, width, length,
         (char *)0);
   syslog(LOG_ERR, "%s: execl(%s): %m", pp->printer,
       pp->filters[LPF_OUTPUT]);
   exit(1);
  }
  (void) close(p[0]);
  ofd = p[1];
 } else {
  ofd = pfd;
  of_pid = 0;
 }
}
