
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; } ;



unsigned commit_list_count(const struct commit_list *l)
{
 unsigned c = 0;
 for (; l; l = l->next )
  c++;
 return c;
}
