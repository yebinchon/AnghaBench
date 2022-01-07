
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int string; } ;


 int _ (char*) ;
 int die (int ) ;
 scalar_t__ git_config_parse_parameter (int ,int ,int *) ;
 int write_one_config ;

__attribute__((used)) static void write_config(struct string_list *config)
{
 int i;

 for (i = 0; i < config->nr; i++) {
  if (git_config_parse_parameter(config->items[i].string,
            write_one_config, ((void*)0)) < 0)
   die(_("unable to write parameters to config file"));
 }
}
