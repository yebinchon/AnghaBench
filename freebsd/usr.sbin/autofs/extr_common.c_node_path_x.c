
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {char* n_key; struct node* n_parent; } ;


 int assert (int) ;
 char* concat (char*,char,char*) ;
 int free (char*) ;
 scalar_t__ node_is_direct_key (struct node const*) ;

__attribute__((used)) static char *
node_path_x(const struct node *n, char *x)
{
 char *path;

 if (n->n_parent == ((void*)0))
  return (x);





 if (node_is_direct_key(n) && x[0] != '\0')
  return (x);

 assert(n->n_key[0] != '\0');
 path = concat(n->n_key, '/', x);
 free(x);

 return (node_path_x(n->n_parent, path));
}
