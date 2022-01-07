
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct convert_driver {int name; struct convert_driver* next; } ;
struct attr_check_item {char* value; } ;


 scalar_t__ ATTR_FALSE (char const*) ;
 scalar_t__ ATTR_TRUE (char const*) ;
 scalar_t__ ATTR_UNSET (char const*) ;
 int strcmp (char const*,int ) ;
 struct convert_driver* user_convert ;

__attribute__((used)) static struct convert_driver *git_path_check_convert(struct attr_check_item *check)
{
 const char *value = check->value;
 struct convert_driver *drv;

 if (ATTR_TRUE(value) || ATTR_FALSE(value) || ATTR_UNSET(value))
  return ((void*)0);
 for (drv = user_convert; drv; drv = drv->next)
  if (!strcmp(value, drv->name))
   return drv;
 return ((void*)0);
}
