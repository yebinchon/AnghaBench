
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;


 int USRQUOTA ;
 struct passwd* getpwnam (char*) ;
 int showquotas (int ,int ,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
showusrname(char *name)
{
 struct passwd *pwd = getpwnam(name);

 if (pwd == ((void*)0)) {
  warnx("%s: unknown user", name);
  return(1);
 }
 return(showquotas(USRQUOTA, pwd->pw_uid, name));
}
