
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mod_depend {int dummy; } ;
typedef TYPE_1__* modlist_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_7__ {int refs; } ;
struct TYPE_6__ {TYPE_2__* container; } ;


 int kld_sx ;
 int linker_load_module (int *,char const*,int *,struct mod_depend*,TYPE_2__**) ;
 TYPE_1__* modlist_lookup2 (char const*,struct mod_depend*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
linker_reference_module(const char *modname, struct mod_depend *verinfo,
    linker_file_t *result)
{
 modlist_t mod;
 int error;

 sx_xlock(&kld_sx);
 if ((mod = modlist_lookup2(modname, verinfo)) != ((void*)0)) {
  *result = mod->container;
  (*result)->refs++;
  sx_xunlock(&kld_sx);
  return (0);
 }

 error = linker_load_module(((void*)0), modname, ((void*)0), verinfo, result);
 sx_xunlock(&kld_sx);
 return (error);
}
