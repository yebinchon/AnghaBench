
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; } ;
struct passwd {char* pw_passwd; int pw_name; } ;
typedef int login_cap_t ;
typedef int line ;


 int ECHO ;
 int EX_DATAERR ;
 int EX_IOERR ;
 int TCSANOW ;
 int _PASSWORD_LEN ;
 int err (int ,char*,char) ;
 int errx (int ,char*,...) ;
 int fflush (int ) ;
 int fputc (char,int ) ;
 int isatty (int) ;
 int login_close (int *) ;
 int * login_getpwclass (struct passwd*) ;
 int * login_setcryptfmt (int *,char*,int *) ;
 int printf (char*,char*,char*,int ) ;
 char* pw_pwcrypt (char*) ;
 int read (int,char*,int) ;
 int stdout ;
 int * strchr (char*,char) ;
 char* strdup (char*) ;
 char* strpbrk (char*,char*) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;
 int warn (char*) ;

__attribute__((used)) static int
pw_set_passwd(struct passwd *pwd, int fd, bool precrypted, bool update)
{
 int b, istty;
 struct termios t, n;
 login_cap_t *lc;
 char line[_PASSWORD_LEN+1];
 char *p;

 if (fd == '-') {
  if (!pwd->pw_passwd || *pwd->pw_passwd != '*') {
   pwd->pw_passwd = "*";
   return (1);
  }
  return (0);
 }

 if ((istty = isatty(fd))) {
  if (tcgetattr(fd, &t) == -1)
   istty = 0;
  else {
   n = t;
   n.c_lflag &= ~(ECHO);
   tcsetattr(fd, TCSANOW, &n);
   printf("%s%spassword for user %s:",
       update ? "new " : "",
       precrypted ? "encrypted " : "",
       pwd->pw_name);
   fflush(stdout);
  }
 }
 b = read(fd, line, sizeof(line) - 1);
 if (istty) {
  tcsetattr(fd, TCSANOW, &t);
  fputc('\n', stdout);
  fflush(stdout);
 }

 if (b < 0)
  err(EX_IOERR, "-%c file descriptor",
      precrypted ? 'H' : 'h');
 line[b] = '\0';
 if ((p = strpbrk(line, "\r\n")) != ((void*)0))
  *p = '\0';
 if (!*line)
  errx(EX_DATAERR, "empty password read on file descriptor %d",
      fd);
 if (precrypted) {
  if (strchr(line, ':') != ((void*)0))
   errx(EX_DATAERR, "bad encrypted password");
  pwd->pw_passwd = strdup(line);
 } else {
  lc = login_getpwclass(pwd);
  if (lc == ((void*)0) ||
    login_setcryptfmt(lc, "sha512", ((void*)0)) == ((void*)0))
   warn("setting crypt(3) format");
  login_close(lc);
  pwd->pw_passwd = pw_pwcrypt(line);
 }
 return (1);
}
