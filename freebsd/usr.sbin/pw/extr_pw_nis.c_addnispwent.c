
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int pw_nisupdate (char const*,struct passwd*,int *) ;

int
addnispwent(const char *path, struct passwd * pwd)
{
 return pw_nisupdate(path, pwd, ((void*)0));
}
