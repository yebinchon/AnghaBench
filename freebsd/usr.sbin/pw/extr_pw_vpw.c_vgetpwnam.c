
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 struct passwd* vnextpwent (char const*,int,int) ;

struct passwd *
vgetpwnam(const char * nam)
{
  return vnextpwent(nam, -1, 1);
}
