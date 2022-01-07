
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {scalar_t__ ut_type; int ut_user; int ut_line; } ;


 scalar_t__ USER_PROCESS ;
 int endutxent () ;
 struct utmpx* getutxline (struct utmpx*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strncpy (int ,char*,int) ;

int
utmp_chk(char *user, char *tty)
{
 struct utmpx lu, *u;

 strncpy(lu.ut_line, tty, sizeof lu.ut_line);
 while ((u = getutxline(&lu)) != ((void*)0))
  if (u->ut_type == USER_PROCESS &&
      strcmp(user, u->ut_user) == 0) {
   endutxent();
   return(0);
  }
 endutxent();
 return(1);
}
