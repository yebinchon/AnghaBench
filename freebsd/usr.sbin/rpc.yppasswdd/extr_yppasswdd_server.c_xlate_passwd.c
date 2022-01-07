
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_master_passwd {int pw_fields; int pw_expire; int pw_shell; int pw_dir; int pw_gecos; int pw_class; int pw_change; int pw_gid; int pw_uid; int pw_passwd; int pw_name; } ;
struct passwd {int pw_fields; int pw_expire; int pw_shell; int pw_dir; int pw_gecos; int pw_class; int pw_change; int pw_gid; int pw_uid; int pw_passwd; int pw_name; } ;



__attribute__((used)) static void
xlate_passwd(struct x_master_passwd *xpwd, struct passwd *pwd)
{
 pwd->pw_name = xpwd->pw_name;
 pwd->pw_passwd = xpwd->pw_passwd;
 pwd->pw_uid = xpwd->pw_uid;
 pwd->pw_gid = xpwd->pw_gid;
 pwd->pw_change = xpwd->pw_change;
 pwd->pw_class = xpwd->pw_class;
 pwd->pw_gecos = xpwd->pw_gecos;
 pwd->pw_dir = xpwd->pw_dir;
 pwd->pw_shell = xpwd->pw_shell;
 pwd->pw_expire = xpwd->pw_expire;
 pwd->pw_fields = xpwd->pw_fields;
}
