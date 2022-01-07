
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_alternate_setup {char const* submodule_name; int error_mode; struct string_list* reference; } ;
struct string_list {int dummy; } ;


 int SUBMODULE_ALTERNATE_ERROR_DIE ;
 int SUBMODULE_ALTERNATE_ERROR_IGNORE ;
 int SUBMODULE_ALTERNATE_ERROR_INFO ;
 struct submodule_alternate_setup SUBMODULE_ALTERNATE_SETUP_INIT ;
 int _ (char*) ;
 int add_possible_reference_from_superproject ;
 int die (int ,char*) ;
 int foreach_alt_odb (int ,struct submodule_alternate_setup*) ;
 int free (char*) ;
 int git_config_get_string (char*,char**) ;
 int strcmp (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void prepare_possible_alternates(const char *sm_name,
  struct string_list *reference)
{
 char *sm_alternate = ((void*)0), *error_strategy = ((void*)0);
 struct submodule_alternate_setup sas = SUBMODULE_ALTERNATE_SETUP_INIT;

 git_config_get_string("submodule.alternateLocation", &sm_alternate);
 if (!sm_alternate)
  return;

 git_config_get_string("submodule.alternateErrorStrategy", &error_strategy);

 if (!error_strategy)
  error_strategy = xstrdup("die");

 sas.submodule_name = sm_name;
 sas.reference = reference;
 if (!strcmp(error_strategy, "die"))
  sas.error_mode = SUBMODULE_ALTERNATE_ERROR_DIE;
 else if (!strcmp(error_strategy, "info"))
  sas.error_mode = SUBMODULE_ALTERNATE_ERROR_INFO;
 else if (!strcmp(error_strategy, "ignore"))
  sas.error_mode = SUBMODULE_ALTERNATE_ERROR_IGNORE;
 else
  die(_("Value '%s' for submodule.alternateErrorStrategy is not recognized"), error_strategy);

 if (!strcmp(sm_alternate, "superproject"))
  foreach_alt_odb(add_possible_reference_from_superproject, &sas);
 else if (!strcmp(sm_alternate, "no"))
  ;
 else
  die(_("Value '%s' for submodule.alternateLocation is not recognized"), sm_alternate);

 free(sm_alternate);
 free(error_strategy);
}
