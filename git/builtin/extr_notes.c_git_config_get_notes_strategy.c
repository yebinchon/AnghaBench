
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum notes_merge_strategy { ____Placeholder_notes_merge_strategy } notes_merge_strategy ;


 int _ (char*) ;
 int free (char*) ;
 scalar_t__ git_config_get_string (char const*,char**) ;
 int git_die_config (char const*,int ,char*) ;
 scalar_t__ parse_notes_merge_strategy (char*,int*) ;

__attribute__((used)) static int git_config_get_notes_strategy(const char *key,
      enum notes_merge_strategy *strategy)
{
 char *value;

 if (git_config_get_string(key, &value))
  return 1;
 if (parse_notes_merge_strategy(value, strategy))
  git_die_config(key, _("unknown notes merge strategy %s"), value);

 free(value);
 return 0;
}
