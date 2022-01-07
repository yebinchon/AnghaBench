
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pw_nisupdate (char const*,int *,char const*) ;

int
delnispwent(const char *path, const char *login)
{
 return pw_nisupdate(path, ((void*)0), login);
}
