
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n_narcs; int n_arcsize; int n_refcnt; struct TYPE_5__** n_arcs; } ;
typedef TYPE_1__ NODE ;


 TYPE_1__* get_node (char*) ;
 TYPE_1__** grow_buf (TYPE_1__**,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
add_arc(char *s1, char *s2)
{
 NODE *n1;
 NODE *n2;
 int bsize, i;

 n1 = get_node(s1);

 if (!strcmp(s1, s2))
  return;

 n2 = get_node(s2);




 for (i = 0; i < n1->n_narcs; i++)
  if (n1->n_arcs[i] == n2)
   return;



 if (n1->n_narcs == n1->n_arcsize) {
  if (!n1->n_arcsize)
   n1->n_arcsize = 10;
  bsize = n1->n_arcsize * sizeof(*n1->n_arcs) * 2;
  n1->n_arcs = grow_buf(n1->n_arcs, bsize);
  n1->n_arcsize = bsize / sizeof(*n1->n_arcs);
 }
 n1->n_arcs[n1->n_narcs++] = n2;
 ++n2->n_refcnt;
}
