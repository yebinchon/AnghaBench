
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blame_scoreboard {int dummy; } ;
struct TYPE_2__ {int * ptr; } ;
struct blame_origin {struct blame_entry* suspects; TYPE_1__ file; } ;
struct blame_entry {struct blame_origin* suspect; struct blame_entry* next; } ;


 int blame_origin_decref (struct blame_origin*) ;
 int blame_origin_incref (struct blame_origin*) ;
 int queue_blames (struct blame_scoreboard*,struct blame_origin*,struct blame_entry*) ;

__attribute__((used)) static void pass_whole_blame(struct blame_scoreboard *sb,
        struct blame_origin *origin, struct blame_origin *porigin)
{
 struct blame_entry *e, *suspects;

 if (!porigin->file.ptr && origin->file.ptr) {

  porigin->file = origin->file;
  origin->file.ptr = ((void*)0);
 }
 suspects = origin->suspects;
 origin->suspects = ((void*)0);
 for (e = suspects; e; e = e->next) {
  blame_origin_incref(porigin);
  blame_origin_decref(e->suspect);
  e->suspect = porigin;
 }
 queue_blames(sb, porigin, suspects);
}
