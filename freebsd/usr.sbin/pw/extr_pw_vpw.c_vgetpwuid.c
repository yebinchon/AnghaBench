
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;


 struct passwd* vnextpwent (int *,int ,int) ;

struct passwd *
vgetpwuid(uid_t uid)
{
  return vnextpwent(((void*)0), uid, 1);
}
