
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_node {struct rand_node* next; } ;


 struct rand_node* rand_root ;
 struct rand_node* rand_tail ;

__attribute__((used)) static void
rand_node_append(struct rand_node *n)
{
 if (rand_root == ((void*)0))
  rand_root = rand_tail = n;
 else {
  rand_tail->next = n;
  rand_tail = n;
 }
}
