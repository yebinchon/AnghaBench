
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct modlist {int dummy; } ;
typedef TYPE_1__* modlist_t ;
typedef int linker_file_t ;
struct TYPE_5__ {char const* name; int version; int container; } ;


 int M_LINKER ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int found_modules ;
 int link ;
 TYPE_1__* malloc (int,int ,int) ;
 int panic (char*) ;

__attribute__((used)) static modlist_t
modlist_newmodule(const char *modname, int version, linker_file_t container)
{
 modlist_t mod;

 mod = malloc(sizeof(struct modlist), M_LINKER, M_NOWAIT | M_ZERO);
 if (mod == ((void*)0))
  panic("no memory for module list");
 mod->container = container;
 mod->name = modname;
 mod->version = version;
 TAILQ_INSERT_TAIL(&found_modules, mod, link);
 return (mod);
}
