
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_name; } ;
struct group {int dummy; } ;


 struct group* gr_add (struct group*,int ) ;
 scalar_t__ grp_has_member (struct group*,int ) ;
 struct passwd* lookup_pwent (char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
grp_add_members(struct group **grp, char *members)
{
 struct passwd *pwd;
 char *p;
 char tok[] = ", \t";

 if (members == ((void*)0))
  return;
 for (p = strtok(members, tok); p != ((void*)0); p = strtok(((void*)0), tok)) {
  pwd = lookup_pwent(p);
  if (grp_has_member(*grp, pwd->pw_name))
   continue;
  *grp = gr_add(*grp, pwd->pw_name);
 }
}
