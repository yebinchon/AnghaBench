
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int ent; } ;


 int compare_blame_final ;
 int get_next_blame ;
 int llist_mergesort (int ,int ,int ,int ) ;
 int set_next_blame ;

void blame_sort_final(struct blame_scoreboard *sb)
{
 sb->ent = llist_mergesort(sb->ent, get_next_blame, set_next_blame,
      compare_blame_final);
}
