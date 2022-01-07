
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int pw_update (struct passwd*,int *) ;

int
addpwent(struct passwd * pwd)
{

 return (pw_update(pwd, ((void*)0)));
}
