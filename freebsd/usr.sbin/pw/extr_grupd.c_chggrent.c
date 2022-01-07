
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 int gr_update (struct group*,char const*) ;

int
chggrent(char const * login, struct group * grp)
{
 return gr_update(grp, login);
}
