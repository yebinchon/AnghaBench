
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termios {int c_lflag; } ;
struct group {char* gr_passwd; char* gr_name; } ;
typedef int line ;
struct TYPE_2__ {int fd; } ;


 int ECHO ;
 int EX_DATAERR ;
 int EX_OSERR ;
 int TCSANOW ;
 TYPE_1__ conf ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int fflush (int ) ;
 int fputc (char,int ) ;
 int isatty (int) ;
 int printf (char*,char*,char*) ;
 char* pw_pwcrypt (char*) ;
 int read (int,char*,int) ;
 int stdout ;
 scalar_t__ strchr (char*,char) ;
 char* strpbrk (char*,char*) ;
 int tcsetattr (int,int ,struct termios*) ;

__attribute__((used)) static void
grp_set_passwd(struct group *grp, bool update, int fd, bool precrypted)
{
 int b;
 int istty;
 struct termios t, n;
 char *p, line[256];

 if (fd == -1)
  return;

 if (fd == '-') {
  grp->gr_passwd = "*";
  return;
 }

 if ((istty = isatty(fd))) {
  n = t;

  n.c_lflag &= ~(ECHO);
  tcsetattr(fd, TCSANOW, &n);
  printf("%sassword for group %s:", update ? "New p" : "P",
      grp->gr_name);
  fflush(stdout);
 }
 b = read(fd, line, sizeof(line) - 1);
 if (istty) {
  tcsetattr(fd, TCSANOW, &t);
  fputc('\n', stdout);
  fflush(stdout);
 }
 if (b < 0)
  err(EX_OSERR, "-h file descriptor");
 line[b] = '\0';
 if ((p = strpbrk(line, " \t\r\n")) != ((void*)0))
  *p = '\0';
 if (!*line)
  errx(EX_DATAERR, "empty password read on file descriptor %d",
      conf.fd);
 if (precrypted) {
  if (strchr(line, ':') != 0)
   errx(EX_DATAERR, "wrong encrypted passwrd");
  grp->gr_passwd = line;
 } else
  grp->gr_passwd = pw_pwcrypt(line);
}
