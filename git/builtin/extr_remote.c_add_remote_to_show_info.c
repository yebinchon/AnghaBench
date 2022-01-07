
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;
struct show_info {int width; int list; } ;


 int string_list_insert (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int add_remote_to_show_info(struct string_list_item *item, void *cb_data)
{
 struct show_info *info = cb_data;
 int n = strlen(item->string);
 if (n > info->width)
  info->width = n;
 string_list_insert(info->list, item->string);
 return 0;
}
