
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* advice_config ;
 int list_config_item (struct string_list*,char const*,int ) ;

void list_config_advices(struct string_list *list, const char *prefix)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(advice_config); i++)
  list_config_item(list, prefix, advice_config[i].name);
}
