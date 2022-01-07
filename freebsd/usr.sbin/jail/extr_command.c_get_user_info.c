
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_name; int pw_gid; } ;
struct cfjail {int dummy; } ;
typedef int login_cap_t ;


 scalar_t__ errno ;
 struct passwd* getpwnam (char const*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 scalar_t__ initgroups (int ,int ) ;
 int jail_warnx (struct cfjail*,char*,char const*,...) ;
 int * login_getpwclass (struct passwd const*) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
get_user_info(struct cfjail *j, const char *username,
    const struct passwd **pwdp, login_cap_t **lcapp)
{
 const struct passwd *pwd;

 errno = 0;
 *pwdp = pwd = username ? getpwnam(username) : getpwuid(getuid());
 if (pwd == ((void*)0)) {
  if (errno)
   jail_warnx(j, "getpwnam%s%s: %s", username ? " " : "",
       username ? username : "", strerror(errno));
  else if (username)
   jail_warnx(j, "%s: no such user", username);
  else
   jail_warnx(j, "unknown uid %d", getuid());
  return -1;
 }
 *lcapp = login_getpwclass(pwd);
 if (*lcapp == ((void*)0)) {
  jail_warnx(j, "getpwclass %s: %s", pwd->pw_name,
      strerror(errno));
  return -1;
 }

 if (initgroups(pwd->pw_name, pwd->pw_gid) < 0) {
  jail_warnx(j, "initgroups %s: %s", pwd->pw_name,
      strerror(errno));
  return -1;
 }
 return 0;
}
