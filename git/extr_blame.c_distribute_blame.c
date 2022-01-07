
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int dummy; } ;
struct blame_origin {int dummy; } ;
struct blame_entry {struct blame_entry* next; struct blame_origin* suspect; } ;


 int compare_blame_suspect ;
 int get_next_blame ;
 struct blame_entry* llist_mergesort (struct blame_entry*,int ,int ,int ) ;
 int queue_blames (struct blame_scoreboard*,struct blame_origin*,struct blame_entry*) ;
 struct blame_entry* reverse_blame (struct blame_entry*,int *) ;
 int set_next_blame ;

__attribute__((used)) static void distribute_blame(struct blame_scoreboard *sb, struct blame_entry *blamed)
{
 blamed = llist_mergesort(blamed, get_next_blame, set_next_blame,
     compare_blame_suspect);
 while (blamed)
 {
  struct blame_origin *porigin = blamed->suspect;
  struct blame_entry *suspects = ((void*)0);
  do {
   struct blame_entry *next = blamed->next;
   blamed->next = suspects;
   suspects = blamed;
   blamed = next;
  } while (blamed && blamed->suspect == porigin);
  suspects = reverse_blame(suspects, ((void*)0));
  queue_blames(sb, porigin, suspects);
 }
}
