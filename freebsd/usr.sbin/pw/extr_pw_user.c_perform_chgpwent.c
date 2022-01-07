
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_name; } ;


 int EX_IOERR ;
 int chgnispwent (char*,char const*,struct passwd*) ;
 int chgpwent (char const*,struct passwd*) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 struct passwd* pw_dup (struct passwd*) ;
 int warn (char*,...) ;

__attribute__((used)) static void
perform_chgpwent(const char *name, struct passwd *pwd, char *nispasswd)
{
 int rc;
 struct passwd *nispwd;


 if (nispasswd && *nispasswd == '/')
  nispwd = pw_dup(pwd);

 rc = chgpwent(name, pwd);
 if (rc == -1)
  errx(EX_IOERR, "user '%s' does not exist (NIS?)", pwd->pw_name);
 else if (rc != 0)
  err(EX_IOERR, "passwd file update");

 if (nispasswd && *nispasswd == '/') {
  rc = chgnispwent(nispasswd, name, nispwd);
  if (rc == -1)
   warn("User '%s' not found in NIS passwd", pwd->pw_name);
  else if (rc != 0)
   warn("NIS passwd update");

 }
}
