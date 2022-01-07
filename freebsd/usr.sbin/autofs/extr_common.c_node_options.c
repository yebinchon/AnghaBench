
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int checked_strdup (char*) ;
 char* node_options_x (struct node const*,int ) ;

char *
node_options(const struct node *n)
{

 return (node_options_x(n, checked_strdup("")));
}
