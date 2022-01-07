
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int COUNTED ;

__attribute__((used)) static void clear_distance(struct commit_list *list)
{
 while (list) {
  struct commit *commit = list->item;
  commit->object.flags &= ~COUNTED;
  list = list->next;
 }
}
