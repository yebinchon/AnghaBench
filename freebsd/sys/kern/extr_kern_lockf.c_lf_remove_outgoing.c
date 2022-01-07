
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry {int lf_outedges; } ;
struct lockf_edge {int dummy; } ;


 struct lockf_edge* LIST_FIRST (int *) ;
 int lf_remove_edge (struct lockf_edge*) ;

__attribute__((used)) static void
lf_remove_outgoing(struct lockf_entry *x)
{
 struct lockf_edge *e;

 while ((e = LIST_FIRST(&x->lf_outedges)) != ((void*)0)) {
  lf_remove_edge(e);
 }
}
