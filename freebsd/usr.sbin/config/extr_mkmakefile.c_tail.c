
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
tail(char *fn)
{
 char *cp;

 cp = strrchr(fn, '/');
 if (cp == ((void*)0))
  return (fn);
 return (cp+1);
}
