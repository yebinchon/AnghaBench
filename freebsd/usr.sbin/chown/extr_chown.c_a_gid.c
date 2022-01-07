
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;


 struct group* getgrnam (char const*) ;
 int gid ;
 char const* gname ;
 int id (char const*,char*) ;

__attribute__((used)) static void
a_gid(const char *s)
{
 struct group *gr;

 if (*s == '\0')
  return;
 gname = s;
 gid = ((gr = getgrnam(s)) != ((void*)0)) ? gr->gr_gid : id(s, "group");
}
