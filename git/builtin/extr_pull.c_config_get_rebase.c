
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int name; } ;
typedef enum rebase_type { ____Placeholder_rebase_type } rebase_type ;


 int REBASE_FALSE ;
 struct branch* branch_get (char*) ;
 int free (char*) ;
 int git_config_get_value (char*,char const**) ;
 int parse_config_rebase (char*,char const*,int) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static enum rebase_type config_get_rebase(void)
{
 struct branch *curr_branch = branch_get("HEAD");
 const char *value;

 if (curr_branch) {
  char *key = xstrfmt("branch.%s.rebase", curr_branch->name);

  if (!git_config_get_value(key, &value)) {
   enum rebase_type ret = parse_config_rebase(key, value, 1);
   free(key);
   return ret;
  }

  free(key);
 }

 if (!git_config_get_value("pull.rebase", &value))
  return parse_config_rebase("pull.rebase", value, 1);

 return REBASE_FALSE;
}
