
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* left; struct TYPE_4__* right; } ;
typedef TYPE_1__ NODE ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_tree(NODE *node)
{
 NODE *node_next;
 while (node) {
  if (node->right)
   free_tree(node->right);
  node_next = node->left;
  free(node);
  node = node_next;
 }
}
