
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ time_t ;
struct utmpx {scalar_t__ ut_type; char* ut_user; char* ut_line; } ;


 int MAXPATHLEN ;
 scalar_t__ USER_PROCESS ;
 int endutxent () ;
 int errx (int,char*,char*) ;
 struct utmpx* getutxent () ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int ) ;
 scalar_t__ term_chk (int,char*,int*,scalar_t__*,int ) ;
 int warnx (char*,char*,char*) ;

void
search_utmp(int devfd, char *user, char *tty, char *mytty, uid_t myuid)
{
 struct utmpx *u;
 time_t bestatime, atime;
 int nloggedttys, nttys, msgsok, user_is_me;

 nloggedttys = nttys = 0;
 bestatime = 0;
 user_is_me = 0;

 while ((u = getutxent()) != ((void*)0))
  if (u->ut_type == USER_PROCESS &&
      strcmp(user, u->ut_user) == 0) {
   ++nloggedttys;
   if (term_chk(devfd, u->ut_line, &msgsok, &atime, 0))
    continue;
   if (myuid && !msgsok)
    continue;
   if (strcmp(u->ut_line, mytty) == 0) {
    user_is_me = 1;
    continue;
   }
   ++nttys;
   if (atime > bestatime) {
    bestatime = atime;
    (void)strlcpy(tty, u->ut_line, MAXPATHLEN);
   }
  }
 endutxent();

 if (nloggedttys == 0)
  errx(1, "%s is not logged in", user);
 if (nttys == 0) {
  if (user_is_me) {
   (void)strlcpy(tty, mytty, MAXPATHLEN);
   return;
  }
  errx(1, "%s has messages disabled", user);
 } else if (nttys > 1) {
  warnx("%s is logged in more than once; writing to %s", user, tty);
 }
}
