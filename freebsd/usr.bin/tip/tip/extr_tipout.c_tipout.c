
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int sigset_t ;


 int BEAUTIFY ;
 int BUFSIZ ;
 scalar_t__ EIO ;
 scalar_t__ ENXIO ;
 int EXCEPTIONS ;
 int FD ;
 int SCRIPT ;
 int SIGEMT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGIOT ;
 int SIGQUIT ;
 int SIGSYS ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_IGN (int ) ;
 int SIG_SETMASK ;
 int STDOUT_FILENO ;
 char STRIP_PAR ;
 scalar_t__ any (char,int ) ;
 scalar_t__ boolean (int ) ;
 scalar_t__ errno ;
 int fflush (int *) ;
 int * fscript ;
 int fwrite (char*,int,size_t,int *) ;
 int intEMT (int ) ;
 int intIOT (int ) ;
 int intSYS (int ) ;
 int intTERM (int ) ;
 int isgraph (char) ;
 int putc (char,int *) ;
 size_t read (int ,char*,int) ;
 int setjmp (int ) ;
 int sigaddset (int *,int ) ;
 int sigbuf ;
 int sigemptyset (int *) ;
 int signal (int ,int (*) (int )) ;
 int sigprocmask (int ,int *,int *) ;
 int value (int ) ;
 int write (int ,char*,size_t) ;

void
tipout(void)
{
 char buf[BUFSIZ];
 char *cp;
 ssize_t scnt;
 size_t cnt;
 sigset_t mask, omask;

 signal(SIGINT, SIG_IGN);
 signal(SIGQUIT, SIG_IGN);
 signal(SIGEMT, intEMT);
 signal(SIGTERM, intTERM);
 signal(SIGIOT, intIOT);
 signal(SIGHUP, intTERM);
 signal(SIGSYS, intSYS);
 (void) setjmp(sigbuf);
 sigprocmask(SIG_BLOCK, ((void*)0), &omask);
 for (;;) {
  sigprocmask(SIG_SETMASK, &omask, ((void*)0));
  scnt = read(FD, buf, BUFSIZ);
  if (scnt <= 0) {

   if (scnt == 0 ||
       (scnt < 0 && (errno == EIO || errno == ENXIO))) {
    sigemptyset(&mask);
    sigaddset(&mask, SIGTERM);
    sigprocmask(SIG_BLOCK, &mask, ((void*)0));
    intTERM(SIGHUP);

   }
   continue;
  }
  cnt = scnt;
  sigemptyset(&mask);
  sigaddset(&mask, SIGEMT);
  sigaddset(&mask, SIGTERM);
  sigaddset(&mask, SIGIOT);
  sigaddset(&mask, SIGSYS);
  sigprocmask(SIG_BLOCK, &mask, ((void*)0));
  for (cp = buf; cp < buf + cnt; cp++)
   *cp &= STRIP_PAR;
  write(STDOUT_FILENO, buf, cnt);
  if (boolean(value(SCRIPT)) && fscript != ((void*)0)) {
   if (!boolean(value(BEAUTIFY))) {
    fwrite(buf, 1, cnt, fscript);
   } else {
    for (cp = buf; cp < buf + cnt; cp++)
     if ((*cp >= ' ' && *cp <= '~') ||
         any(*cp, value(EXCEPTIONS)))
      putc(*cp, fscript);
   }
   for (cp = buf; cp < buf + cnt; cp++) {
    if (!isgraph(*cp)) {
     fflush(fscript);
     break;
    }
   }
  }
 }
}
