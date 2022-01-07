
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;


 struct passwd* getpwnam (char*) ;

uid_t
getuserid(char name[])
{
 struct passwd *pw;

 if ((pw = getpwnam(name)) == ((void*)0))
  return (-1);
 return (pw->pw_uid);
}
