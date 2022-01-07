
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_node {struct rand_node* next; } ;


 int rand_node_free (struct rand_node*) ;

__attribute__((used)) static void
rand_node_free_rec(struct rand_node *n)
{
 if (n != ((void*)0)) {
  if (n->next != ((void*)0))
   rand_node_free_rec(n->next);

  rand_node_free(n);
 }
}
