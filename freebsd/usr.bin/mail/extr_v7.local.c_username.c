
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 char* getenv (char*) ;
 char* getname (scalar_t__) ;
 scalar_t__ getuid () ;
 int printf (char*,unsigned int) ;

char *
username(void)
{
 char *np;
 uid_t uid;

 if ((np = getenv("USER")) != ((void*)0))
  return (np);
 if ((np = getenv("LOGNAME")) != ((void*)0))
  return (np);
 if ((np = getname(uid = getuid())) != ((void*)0))
  return (np);
 printf("Cannot associate a name with uid %u\n", (unsigned)uid);
 return (((void*)0));
}
