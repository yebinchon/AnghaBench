
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 struct passwd* vnextpwent (int *,int,int ) ;

struct passwd *
vgetpwent(void)
{
  return vnextpwent(((void*)0), -1, 0);
}
