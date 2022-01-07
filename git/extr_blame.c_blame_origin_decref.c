
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct blame_origin* ptr; } ;
struct blame_origin {scalar_t__ refcnt; struct blame_origin* next; int commit; TYPE_1__ file; struct blame_origin* previous; } ;


 int die (char*) ;
 int free (struct blame_origin*) ;
 struct blame_origin* get_blame_suspects (int ) ;
 int set_blame_suspects (int ,struct blame_origin*) ;

void blame_origin_decref(struct blame_origin *o)
{
 if (o && --o->refcnt <= 0) {
  struct blame_origin *p, *l = ((void*)0);
  if (o->previous)
   blame_origin_decref(o->previous);
  free(o->file.ptr);

  for (p = get_blame_suspects(o->commit); p; l = p, p = p->next) {
   if (p == o) {
    if (l)
     l->next = p->next;
    else
     set_blame_suspects(o->commit, p->next);
    free(o);
    return;
   }
  }
  die("internal error in blame_origin_decref");
 }
}
