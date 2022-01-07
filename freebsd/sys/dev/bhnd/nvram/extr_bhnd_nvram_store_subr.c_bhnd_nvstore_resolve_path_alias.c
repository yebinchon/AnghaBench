
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct bhnd_nvram_store {int dummy; } ;
typedef int bhnd_nvstore_path ;
struct TYPE_3__ {int * path; } ;
typedef TYPE_1__ bhnd_nvstore_alias ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int MA_OWNED ;
 TYPE_1__* bhnd_nvstore_get_alias (struct bhnd_nvram_store*,int ) ;

bhnd_nvstore_path *
bhnd_nvstore_resolve_path_alias(struct bhnd_nvram_store *sc, u_long aval)
{
 bhnd_nvstore_alias *alias;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);


 if ((alias = bhnd_nvstore_get_alias(sc, aval)) == ((void*)0))
  return (((void*)0));

 return (alias->path);
}
