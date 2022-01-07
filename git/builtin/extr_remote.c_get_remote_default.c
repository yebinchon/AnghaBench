
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int get_remote_default(const char *key, const char *value, void *priv)
{
 if (strcmp(key, "remotes.default") == 0) {
  int *found = priv;
  *found = 1;
 }
 return 0;
}
