
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node {TYPE_1__* n_parent; } ;
struct TYPE_2__ {int n_children; } ;


 int TAILQ_INSERT_AFTER (int *,struct node*,struct node*,int ) ;
 int TAILQ_REMOVE (int *,struct node*,int ) ;
 int n_next ;

__attribute__((used)) static void
node_move_after(struct node *n, struct node *previous)
{

 TAILQ_REMOVE(&n->n_parent->n_children, n, n_next);
 n->n_parent = previous->n_parent;
 TAILQ_INSERT_AFTER(&previous->n_parent->n_children, previous, n, n_next);
}
