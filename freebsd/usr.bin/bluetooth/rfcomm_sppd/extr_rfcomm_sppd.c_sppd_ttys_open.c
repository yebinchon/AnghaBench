
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int LOG_ERR ;
 int PATH_MAX ;
 int cfmakeraw (struct termios*) ;
 int close (int) ;
 int errno ;
 int openpty (int*,int*,char*,struct termios*,int *) ;
 char* strdup (char*) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
sppd_ttys_open(char **tty, int *amaster, int *aslave)
{
 char pty[PATH_MAX];
 struct termios tio;

 cfmakeraw(&tio);

 if (openpty(amaster, aslave, pty, &tio, ((void*)0)) == -1) {
  syslog(LOG_ERR, "Could not openpty(). %s", strerror(errno));
  return (-1);
 }

 if ((*tty = strdup(pty)) == ((void*)0)) {
  syslog(LOG_ERR, "Could not strdup(). %s", strerror(errno));
  close(*aslave);
  close(*amaster);
  return (-1);
 }

 return (0);
}
