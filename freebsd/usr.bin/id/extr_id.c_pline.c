
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; char* pw_passwd; int pw_uid; int pw_gid; char* pw_class; int pw_shell; int pw_dir; int pw_gecos; scalar_t__ pw_expire; scalar_t__ pw_change; } ;


 int err (int,char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int printf (char*,char*,char*,int,int,char*,long,long,int ,int ,int ) ;

__attribute__((used)) static void
pline(struct passwd *pw)
{

 if (!pw) {
  if ((pw = getpwuid(getuid())) == ((void*)0))
   err(1, "getpwuid");
 }

 (void)printf("%s:%s:%d:%d:%s:%ld:%ld:%s:%s:%s\n", pw->pw_name,
   pw->pw_passwd, pw->pw_uid, pw->pw_gid, pw->pw_class,
   (long)pw->pw_change, (long)pw->pw_expire, pw->pw_gecos,
   pw->pw_dir, pw->pw_shell);
}
