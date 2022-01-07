
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {int dummy; } ;


 int commit_list_compare_by_date ;
 int commit_list_get_next ;
 int commit_list_set_next ;
 struct commit_list* llist_mergesort (struct commit_list*,int ,int ,int ) ;

void commit_list_sort_by_date(struct commit_list **list)
{
 *list = llist_mergesort(*list, commit_list_get_next, commit_list_set_next,
    commit_list_compare_by_date);
}
