
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_group_data {int list; int name; } ;


 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,int ) ;
 size_t strcspn (char const*,char*) ;
 int string_list_append_nodup (int ,int ) ;
 int xstrndup (char const*,size_t) ;

__attribute__((used)) static int get_remote_group(const char *key, const char *value, void *priv)
{
 struct remote_group_data *g = priv;

 if (skip_prefix(key, "remotes.", &key) && !strcmp(key, g->name)) {

  while (*value) {
   size_t wordlen = strcspn(value, " \t\n");

   if (wordlen >= 1)
    string_list_append_nodup(g->list,
         xstrndup(value, wordlen));
   value += wordlen + (value[wordlen] != '\0');
  }
 }

 return 0;
}
