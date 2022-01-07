
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_alias_data {char const* member_0; char* v; int * member_1; } ;


 int config_alias_cb ;
 int read_early_config (int ,struct config_alias_data*) ;

char *alias_lookup(const char *alias)
{
 struct config_alias_data data = { alias, ((void*)0) };

 read_early_config(config_alias_cb, &data);

 return data.v;
}
