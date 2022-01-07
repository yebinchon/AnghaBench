
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;


 int endpwent () ;
 int errx (int,char*) ;
 struct passwd* getpwnam (char*) ;
 int strtoul (char*,char**,int ) ;

uid_t
user2uid(char *username)
{
 struct passwd *pwd;
 uid_t uid;
 char *r;

 uid = strtoul(username, &r, 0);
 if (!*r && r != username)
  return (uid);
 if ((pwd = getpwnam(username)) == ((void*)0))
  errx(1, "getpwnam failed: No such user");
 endpwent();
 return (pwd->pw_uid);
}
