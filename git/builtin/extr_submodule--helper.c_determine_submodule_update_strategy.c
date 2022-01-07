
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct submodule_update_strategy {scalar_t__ type; int command; } ;
struct TYPE_2__ {scalar_t__ type; int command; } ;
struct submodule {TYPE_1__ update_strategy; int name; } ;
struct repository {int dummy; } ;


 void* SM_UPDATE_CHECKOUT ;
 scalar_t__ SM_UPDATE_MERGE ;
 scalar_t__ SM_UPDATE_NONE ;
 scalar_t__ SM_UPDATE_REBASE ;
 scalar_t__ SM_UPDATE_UNSPECIFIED ;
 int _ (char*) ;
 int die (int ,char const*,char const*) ;
 int free (char*) ;
 int null_oid ;
 scalar_t__ parse_submodule_update_strategy (char const*,struct submodule_update_strategy*) ;
 int repo_config_get_string_const (struct repository*,char*,char const**) ;
 struct submodule* submodule_from_path (struct repository*,int *,char const*) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static void determine_submodule_update_strategy(struct repository *r,
      int just_cloned,
      const char *path,
      const char *update,
      struct submodule_update_strategy *out)
{
 const struct submodule *sub = submodule_from_path(r, &null_oid, path);
 char *key;
 const char *val;

 key = xstrfmt("submodule.%s.update", sub->name);

 if (update) {
  if (parse_submodule_update_strategy(update, out) < 0)
   die(_("Invalid update mode '%s' for submodule path '%s'"),
    update, path);
 } else if (!repo_config_get_string_const(r, key, &val)) {
  if (parse_submodule_update_strategy(val, out) < 0)
   die(_("Invalid update mode '%s' configured for submodule path '%s'"),
    val, path);
 } else if (sub->update_strategy.type != SM_UPDATE_UNSPECIFIED) {
  out->type = sub->update_strategy.type;
  out->command = sub->update_strategy.command;
 } else
  out->type = SM_UPDATE_CHECKOUT;

 if (just_cloned &&
     (out->type == SM_UPDATE_MERGE ||
      out->type == SM_UPDATE_REBASE ||
      out->type == SM_UPDATE_NONE))
  out->type = SM_UPDATE_CHECKOUT;

 free(key);
}
