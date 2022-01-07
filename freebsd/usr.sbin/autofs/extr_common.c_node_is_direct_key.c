
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node {int n_key; TYPE_1__* n_parent; } ;
struct TYPE_2__ {int * n_parent; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool
node_is_direct_key(const struct node *n)
{

 if (n->n_parent != ((void*)0) && n->n_parent->n_parent == ((void*)0) &&
     strcmp(n->n_key, "/-") == 0) {
  return (1);
 }

 return (0);
}
