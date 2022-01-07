
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int dummy; } ;


 int keys_array_size () ;
 int memset (struct sort_list_item*,int ,size_t) ;
 struct sort_list_item* sort_malloc (size_t) ;

struct sort_list_item *
sort_list_item_alloc(void)
{
 struct sort_list_item *si;
 size_t sz;

 sz = sizeof(struct sort_list_item) + keys_array_size();
 si = sort_malloc(sz);
 memset(si, 0, sz);

 return (si);
}
