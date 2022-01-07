
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_name; } ;


 int pw_update (int *,int ) ;

int
delpwent(struct passwd * pwd)
{

 return (pw_update(((void*)0), pwd->pw_name));
}
