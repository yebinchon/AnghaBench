
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int checked_strdup (char*) ;
 char* node_path_x (struct node const*,int ) ;
 size_t strlen (char*) ;

char *
node_path(const struct node *n)
{
 char *path;
 size_t len;

 path = node_path_x(n, checked_strdup(""));




 len = strlen(path);
 if (len > 1 && path[len - 1] == '/')
  path[len - 1] = '\0';

 return (path);
}
