
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int * n_parent; } ;


 int assert (int) ;
 struct node* node_find_x (struct node*,char const*) ;

struct node *
node_find(struct node *root, const char *path)
{
 struct node *node;

 assert(root->n_parent == ((void*)0));

 node = node_find_x(root, path);
 if (node != ((void*)0))
  assert(node != root);

 return (node);
}
