
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct passwd {int pw_expire; int pw_shell; int pw_dir; int pw_gecos; int pw_class; int pw_change; int pw_gid; int pw_uid; int pw_passwd; int pw_name; } ;
struct TYPE_4__ {scalar_t__ pw_selected; int pw_expire; void* pw_shell; void* pw_dir; void* pw_gecos; void* pw_class; int pw_change; int pw_gid; int pw_uid; void* pw_passwd; void* pw_name; } ;


 int endpwent () ;
 struct passwd* getpwent () ;
 int npwds ;
 TYPE_1__* pwds ;
 int pwdsz ;
 int setpwent () ;
 TYPE_1__* xrealloc (TYPE_1__*,int) ;
 void* xstrdup (int ) ;

__attribute__((used)) static void
get_users(void)
{
 struct passwd *pwd;

 setpwent();
 for (;;) {
  if (npwds == pwdsz) {
   pwdsz += pwdsz ? pwdsz : 128;
   pwds = xrealloc(pwds, pwdsz * sizeof *pwds);
  }
  if ((pwd = getpwent()) == ((void*)0))
   break;
  pwds[npwds].pw_name = xstrdup(pwd->pw_name);
  pwds[npwds].pw_passwd = xstrdup(pwd->pw_passwd);
  pwds[npwds].pw_uid = pwd->pw_uid;
  pwds[npwds].pw_gid = pwd->pw_gid;
  pwds[npwds].pw_change = pwd->pw_change;
  pwds[npwds].pw_class = xstrdup(pwd->pw_class);
  pwds[npwds].pw_gecos = xstrdup(pwd->pw_gecos);
  pwds[npwds].pw_dir = xstrdup(pwd->pw_dir);
  pwds[npwds].pw_shell = xstrdup(pwd->pw_shell);
  pwds[npwds].pw_expire = pwd->pw_expire;
  pwds[npwds].pw_selected = 0;
  npwds++;
 }
 endpwent();
}
