
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_node {struct rand_node* cp; } ;


 int free (struct rand_node*) ;

__attribute__((used)) static void
rand_node_free(struct rand_node *n)
{
 if (n != ((void*)0)) {
  if (n->cp != ((void*)0))
   free(n->cp);

  free(n);
 }
}
