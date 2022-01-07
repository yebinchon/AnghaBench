
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int commits; } ;
struct blame_origin {int commit; struct blame_entry* suspects; struct blame_origin* next; } ;
struct blame_entry {int dummy; } ;


 struct blame_entry* blame_merge (struct blame_entry*,struct blame_entry*) ;
 struct blame_origin* get_blame_suspects (int ) ;
 int prio_queue_put (int *,int ) ;

__attribute__((used)) static void queue_blames(struct blame_scoreboard *sb, struct blame_origin *porigin,
    struct blame_entry *sorted)
{
 if (porigin->suspects)
  porigin->suspects = blame_merge(porigin->suspects, sorted);
 else {
  struct blame_origin *o;
  for (o = get_blame_suspects(porigin->commit); o; o = o->next) {
   if (o->suspects) {
    porigin->suspects = sorted;
    return;
   }
  }
  porigin->suspects = sorted;
  prio_queue_put(&sb->commits, porigin->commit);
 }
}
