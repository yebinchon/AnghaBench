
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct string_list* util; } ;
struct string_list {scalar_t__ nr; } ;



__attribute__((used)) static int compare_by_list(const void *a1, const void *a2)
{
 const struct string_list_item *i1 = a1, *i2 = a2;
 const struct string_list *l1 = i1->util, *l2 = i2->util;

 if (l1->nr < l2->nr)
  return 1;
 else if (l1->nr == l2->nr)
  return 0;
 else
  return -1;
}
