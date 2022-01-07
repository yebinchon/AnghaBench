
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int errx (int,char*,char*) ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (long) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static struct passwd *
who(char *u)
{
 struct passwd *pw;
 long id;
 char *ep;





 if ((pw = getpwnam(u)))
  return(pw);
 id = strtol(u, &ep, 10);
 if (*u && !*ep && (pw = getpwuid(id)))
  return(pw);
 errx(1, "%s: no such user", u);

}
