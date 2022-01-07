
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {char* pw_name; } ;


 struct passwd* getpwuid (int ) ;

char *
getname(uid_t uid)
{
 struct passwd *pw;

 if ((pw = getpwuid(uid)) == ((void*)0))
  return (((void*)0));
 return (pw->pw_name);
}
