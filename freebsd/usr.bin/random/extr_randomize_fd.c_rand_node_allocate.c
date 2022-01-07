
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_node {int * next; int * cp; scalar_t__ len; } ;


 int err (int,char*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static struct rand_node *
rand_node_allocate(void)
{
 struct rand_node *n;

 n = (struct rand_node *)malloc(sizeof(struct rand_node));
 if (n == ((void*)0))
  err(1, "malloc");

 n->len = 0;
 n->cp = ((void*)0);
 n->next = ((void*)0);
 return(n);
}
