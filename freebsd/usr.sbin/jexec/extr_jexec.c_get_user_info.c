
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* uid_t ;
struct passwd {char const* pw_name; int pw_gid; } ;
typedef int login_cap_t ;


 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 struct passwd* getpwnam (char const*) ;
 struct passwd* getpwuid (char const*) ;
 char* getuid () ;
 scalar_t__ initgroups (char const*,int ) ;
 int * login_getpwclass (struct passwd const*) ;

__attribute__((used)) static void
get_user_info(const char *username, const struct passwd **pwdp,
    login_cap_t **lcapp)
{
 uid_t uid;
 const struct passwd *pwd;

 errno = 0;
 if (username) {
  pwd = getpwnam(username);
  if (pwd == ((void*)0)) {
   if (errno)
    err(1, "getpwnam: %s", username);
   else
    errx(1, "%s: no such user", username);
  }
 } else {
  uid = getuid();
  pwd = getpwuid(uid);
  if (pwd == ((void*)0)) {
   if (errno)
    err(1, "getpwuid: %d", uid);
   else
    errx(1, "unknown uid: %d", uid);
  }
 }
 *pwdp = pwd;
 *lcapp = login_getpwclass(pwd);
 if (*lcapp == ((void*)0))
  err(1, "getpwclass: %s", pwd->pw_name);
 if (initgroups(pwd->pw_name, pwd->pw_gid) < 0)
  err(1, "initgroups: %s", pwd->pw_name);
}
