
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct push_info* util; int string; } ;
struct show_info {int width; int width2; int list; } ;
struct push_info {int dest; } ;


 struct string_list_item* string_list_append (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int add_push_to_show_info(struct string_list_item *push_item, void *cb_data)
{
 struct show_info *show_info = cb_data;
 struct push_info *push_info = push_item->util;
 struct string_list_item *item;
 int n;
 if ((n = strlen(push_item->string)) > show_info->width)
  show_info->width = n;
 if ((n = strlen(push_info->dest)) > show_info->width2)
  show_info->width2 = n;
 item = string_list_append(show_info->list, push_item->string);
 item->util = push_item->util;
 return 0;
}
