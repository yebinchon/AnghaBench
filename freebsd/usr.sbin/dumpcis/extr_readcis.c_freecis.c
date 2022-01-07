
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_list {struct tuple_list* data; struct tuple_list* next; struct tuple_list* tuples; } ;
struct tuple {struct tuple* data; struct tuple* next; struct tuple* tuples; } ;


 int free (struct tuple_list*) ;

void
freecis(struct tuple_list *tlist)
{
 struct tuple_list *tl;
 struct tuple *tp;

 while ((tl = tlist) != 0) {
  tlist = tl->next;
  while ((tp = tl->tuples) != 0) {
   tl->tuples = tp->next;
   free(tp->data);
   free(tp);
  }
  free(tl);
 }
}
