
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_name; } ;
typedef int StringList ;


 struct group* group_from_name_or_id (char*) ;
 int newstr (int ) ;
 int sl_add (int *,int ) ;
 int * sl_init () ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
split_groups(StringList **groups, char *groupsstr)
{
 struct group *grp;
 char *p;
 char tok[] = ", \t";

 if (*groups == ((void*)0))
  *groups = sl_init();
 for (p = strtok(groupsstr, tok); p != ((void*)0); p = strtok(((void*)0), tok)) {
  grp = group_from_name_or_id(p);
  sl_add(*groups, newstr(grp->gr_name));
 }
}
