
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyent {char* ty_type; } ;


 scalar_t__ ENOENT ;
 int STDERR_FILENO ;
 char* askuser (char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,int ) ;
 void* getenv (char*) ;
 struct ttyent* getttynam (char*) ;
 char* mapped (char const*) ;
 int strerror (scalar_t__) ;
 char* strrchr (char*,char) ;
 char* tbuf ;
 int tgetent (char*,char const*) ;
 char* ttyname (int ) ;
 int unsetenv (char*) ;
 int warnx (char*,char const*) ;

const char *
get_termcap_entry(char *userarg, char **tcapbufp)
{
 struct ttyent *t;
 int rval;
 char *p, *ttypath;
 const char *ttype;

 if (userarg) {
  ttype = userarg;
  goto found;
 }


 if ((ttype = getenv("TERM")))
  goto map;


 if ((ttypath = ttyname(STDERR_FILENO))) {
  if ((p = strrchr(ttypath, '/')))
   ++p;
  else
   p = ttypath;
  if ((t = getttynam(p))) {
   ttype = t->ty_type;
   goto map;
  }
 }


 ttype = "unknown";

map: ttype = mapped(ttype);






found: if ((p = getenv("TERMCAP")) != ((void*)0) && *p != '/')
  unsetenv("TERMCAP");





 if (ttype[0] == '?') {
  if (ttype[1] != '\0')
   ttype = askuser(ttype + 1);
  else
   ttype = askuser(((void*)0));
 }


 while ((rval = tgetent(tbuf, ttype)) == 0) {
  warnx("terminal type %s is unknown", ttype);
  ttype = askuser(((void*)0));
 }
 if (rval == -1)
  errx(1, "termcap: %s", strerror(errno ? errno : ENOENT));
 *tcapbufp = tbuf;
 return (ttype);
}
