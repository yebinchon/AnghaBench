
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys {void** keys_values; int ** keys_names; } ;


 int KEYS_MAX ;
 void* checked_strdup (char const*) ;
 int log_debugx (char*,char const*,char const*) ;
 int log_errx (int,char*) ;

void
keys_add(struct keys *keys, const char *name, const char *value)
{
 int i;

 log_debugx("key to send: \"%s=%s\"", name, value);






 for (i = 0; i < KEYS_MAX; i++) {
  if (keys->keys_names[i] == ((void*)0)) {
   keys->keys_names[i] = checked_strdup(name);
   keys->keys_values[i] = checked_strdup(value);
   return;
  }
 }
 log_errx(1, "too many keys");
}
