
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int dummy; } ;
struct blame_entry {struct blame_entry* next; } ;


 unsigned int blame_entry_score (struct blame_scoreboard*,struct blame_entry*) ;

__attribute__((used)) static struct blame_entry **filter_small(struct blame_scoreboard *sb,
      struct blame_entry **small,
      struct blame_entry **source,
      unsigned score_min)
{
 struct blame_entry *p = *source;
 struct blame_entry *oldsmall = *small;
 while (p) {
  if (blame_entry_score(sb, p) <= score_min) {
   *small = p;
   small = &p->next;
   p = *small;
  } else {
   *source = p;
   source = &p->next;
   p = *source;
  }
 }
 *small = oldsmall;
 *source = ((void*)0);
 return small;
}
