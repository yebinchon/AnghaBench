
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_set {int dummy; } ;


 int configset_add_value (struct config_set*,char const*,char const*) ;

__attribute__((used)) static int config_set_callback(const char *key, const char *value, void *cb)
{
 struct config_set *cs = cb;
 configset_add_value(cs, key, value);
 return 0;
}
