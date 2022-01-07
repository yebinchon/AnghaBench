
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct printer {scalar_t__ mode_set; int printer; int baud_rate; } ;


 int LOG_ERR ;
 int TCSAFLUSH ;
 int TIOCEXCL ;
 int cfsetspeed (struct termios*,int ) ;
 int exit (int) ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int msearch (char*,struct termios*) ;
 int pfd ;
 char* strdup (scalar_t__) ;
 char* strsep (char**,char*) ;
 int syslog (int ,char*,int ) ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void
setty(const struct printer *pp)
{
 struct termios ttybuf;

 if (ioctl(pfd, TIOCEXCL, (char *)0) < 0) {
  syslog(LOG_ERR, "%s: ioctl(TIOCEXCL): %m", pp->printer);
  exit(1);
 }
 if (tcgetattr(pfd, &ttybuf) < 0) {
  syslog(LOG_ERR, "%s: tcgetattr: %m", pp->printer);
  exit(1);
 }
 if (pp->baud_rate > 0)
  cfsetspeed(&ttybuf, pp->baud_rate);
 if (pp->mode_set) {
  char *s = strdup(pp->mode_set), *tmp;

  while ((tmp = strsep(&s, ",")) != ((void*)0)) {
   (void) msearch(tmp, &ttybuf);
  }
 }
 if (pp->mode_set != 0 || pp->baud_rate > 0) {
  if (tcsetattr(pfd, TCSAFLUSH, &ttybuf) == -1) {
   syslog(LOG_ERR, "%s: tcsetattr: %m", pp->printer);
  }
 }
}
