
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys {char const** keys_values; int ** keys_names; } ;


 int KEYS_MAX ;
 scalar_t__ strcmp (int *,char const*) ;

const char *
keys_find(struct keys *keys, const char *name)
{
 int i;






 for (i = 0; i < KEYS_MAX; i++) {
  if (keys->keys_names[i] == ((void*)0))
   return (((void*)0));
  if (strcmp(keys->keys_names[i], name) == 0)
   return (keys->keys_values[i]);
 }
 return (((void*)0));
}
