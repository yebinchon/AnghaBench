
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userconf {char* default_group; } ;
struct group {int gr_name; } ;


 struct group* group_from_name_or_id (char*) ;
 char* newstr (int ) ;

__attribute__((used)) static void
validate_grname(struct userconf *cnf, char *group)
{
 struct group *grp;

 if (group == ((void*)0) || *group == '\0') {
  cnf->default_group = "";
  return;
 }
 grp = group_from_name_or_id(group);
 cnf->default_group = newstr(grp->gr_name);
}
