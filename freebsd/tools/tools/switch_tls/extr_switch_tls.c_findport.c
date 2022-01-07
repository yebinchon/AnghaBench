
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static char *
findport(const char *arg)
{
 char *dot, *colon;


 dot = strrchr(arg, '.');
 colon = strrchr(arg, ':');
 if (dot == ((void*)0))
  return (colon);
 if (colon == ((void*)0))
  return (dot);
 if (dot < colon)
  return (colon);
 else
  return (dot);
}
