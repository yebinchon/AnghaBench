
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_include_data {int (* fn ) (char const*,char const*,int ) ;int opts; int data; } ;


 int handle_path_include (char const*,struct config_include_data*) ;
 scalar_t__ include_condition_is_true (int ,char const*,int) ;
 int parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int strcmp (char const*,char*) ;
 int stub1 (char const*,char const*,int ) ;

int git_config_include(const char *var, const char *value, void *data)
{
 struct config_include_data *inc = data;
 const char *cond, *key;
 int cond_len;
 int ret;





 ret = inc->fn(var, value, inc->data);
 if (ret < 0)
  return ret;

 if (!strcmp(var, "include.path"))
  ret = handle_path_include(value, inc);

 if (!parse_config_key(var, "includeif", &cond, &cond_len, &key) &&
     (cond && include_condition_is_true(inc->opts, cond, cond_len)) &&
     !strcmp(key, "path"))
  ret = handle_path_include(value, inc);

 return ret;
}
