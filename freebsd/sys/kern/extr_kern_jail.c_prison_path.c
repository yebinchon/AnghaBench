
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {char* pr_path; } ;


 int strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *
prison_path(struct prison *pr1, struct prison *pr2)
{
 char *path1, *path2;
 int len1;

 path1 = pr1->pr_path;
 path2 = pr2->pr_path;
 if (!strcmp(path1, "/"))
  return (path2);
 len1 = strlen(path1);
 if (strncmp(path1, path2, len1))
  return (path2);
 if (path2[len1] == '\0')
  return "/";
 if (path2[len1] == '/')
  return (path2 + len1);
 return (path2);
}
