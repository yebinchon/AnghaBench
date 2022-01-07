
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct config_alias_data {struct string_list* member_2; int * member_1; int * member_0; } ;


 int config_alias_cb ;
 int read_early_config (int ,struct config_alias_data*) ;

void list_aliases(struct string_list *list)
{
 struct config_alias_data data = { ((void*)0), ((void*)0), list };

 read_early_config(config_alias_cb, &data);
}
