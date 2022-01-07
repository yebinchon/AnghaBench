
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_list {struct merge_list* next; } ;


 struct merge_list** merge_result_end ;

__attribute__((used)) static void add_merge_entry(struct merge_list *entry)
{
 *merge_result_end = entry;
 merge_result_end = &entry->next;
}
