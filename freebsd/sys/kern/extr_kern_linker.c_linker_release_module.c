
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mod_depend {int dummy; } ;
typedef TYPE_1__* modlist_t ;
typedef int * linker_file_t ;
struct TYPE_3__ {int * container; } ;


 int ESRCH ;
 int KASSERT (int,char*) ;
 int LINKER_UNLOAD_NORMAL ;
 int kld_sx ;
 int linker_file_unload (int *,int ) ;
 TYPE_1__* modlist_lookup2 (char const*,struct mod_depend*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
linker_release_module(const char *modname, struct mod_depend *verinfo,
    linker_file_t lf)
{
 modlist_t mod;
 int error;

 sx_xlock(&kld_sx);
 if (lf == ((void*)0)) {
  KASSERT(modname != ((void*)0),
      ("linker_release_module: no file or name"));
  mod = modlist_lookup2(modname, verinfo);
  if (mod == ((void*)0)) {
   sx_xunlock(&kld_sx);
   return (ESRCH);
  }
  lf = mod->container;
 } else
  KASSERT(modname == ((void*)0) && verinfo == ((void*)0),
      ("linker_release_module: both file and name"));
 error = linker_file_unload(lf, LINKER_UNLOAD_NORMAL);
 sx_xunlock(&kld_sx);
 return (error);
}
