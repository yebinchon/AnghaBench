
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;


 struct passwd* getpwnam (char const*) ;
 int id (char const*,char*) ;
 int uid ;

__attribute__((used)) static void
a_uid(const char *s)
{
 struct passwd *pw;

 if (*s == '\0')
  return;
 uid = ((pw = getpwnam(s)) != ((void*)0)) ? pw->pw_uid : id(s, "user");
}
