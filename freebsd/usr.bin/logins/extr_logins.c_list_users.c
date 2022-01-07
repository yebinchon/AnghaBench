
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpasswd {scalar_t__ pw_selected; } ;


 int display_user (struct xpasswd*) ;
 unsigned int npwds ;
 struct xpasswd* pwds ;

__attribute__((used)) static void
list_users(void)
{
 struct xpasswd *pwd;
 unsigned int i;

 for (i = 0, pwd = pwds; i < npwds; ++i, ++pwd)
  if (pwd->pw_selected)
   display_user(pwd);
}
