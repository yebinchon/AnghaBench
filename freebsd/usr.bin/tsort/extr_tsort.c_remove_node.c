
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* n_name; int n_narcs; TYPE_1__** n_prevp; TYPE_1__* n_next; int n_refcnt; struct TYPE_5__** n_arcs; } ;
struct TYPE_4__ {struct TYPE_4__** n_prevp; } ;
typedef TYPE_2__ NODE ;


 int printf (char*,char*) ;

__attribute__((used)) static void
remove_node(NODE *n)
{
 NODE **np;
 int i;

 (void)printf("%s\n", n->n_name);
 for (np = n->n_arcs, i = n->n_narcs; --i >= 0; np++)
  --(*np)->n_refcnt;
 n->n_narcs = 0;
 *n->n_prevp = n->n_next;
 if (n->n_next)
  n->n_next->n_prevp = n->n_prevp;
}
