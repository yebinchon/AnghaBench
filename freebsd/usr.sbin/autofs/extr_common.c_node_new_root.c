
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int n_children; void* n_options; void* n_key; } ;


 int TAILQ_INIT (int *) ;
 struct node* calloc (int,int) ;
 void* checked_strdup (char*) ;
 int log_err (int,char*) ;

struct node *
node_new_root(void)
{
 struct node *n;

 n = calloc(1, sizeof(*n));
 if (n == ((void*)0))
  log_err(1, "calloc");

 n->n_key = checked_strdup("/");
 n->n_options = checked_strdup("");

 TAILQ_INIT(&n->n_children);

 return (n);
}
