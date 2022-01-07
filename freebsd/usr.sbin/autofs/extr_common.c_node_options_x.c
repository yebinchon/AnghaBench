
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {struct node* n_parent; int n_options; } ;


 char* concat (char*,char,int ) ;
 int free (char*) ;

__attribute__((used)) static char *
node_options_x(const struct node *n, char *x)
{
 char *options;

 if (n == ((void*)0))
  return (x);

 options = concat(x, ',', n->n_options);
 free(x);

 return (node_options_x(n->n_parent, options));
}
