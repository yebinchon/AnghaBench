
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct bhnd_nvram_store {scalar_t__ num_paths; int * paths; } ;
typedef int bhnd_nvstore_path_list ;
struct TYPE_4__ {int path_str; } ;
typedef TYPE_1__ bhnd_nvstore_path ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int ENOMEM ;
 int HASHINIT ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int MA_OWNED ;
 scalar_t__ SIZE_MAX ;
 int * bhnd_nvstore_get_path (struct bhnd_nvram_store*,char const*,size_t) ;
 TYPE_1__* bhnd_nvstore_path_new (char const*,size_t) ;
 size_t hash32_str (int ,int ) ;
 size_t nitems (int *) ;
 int np_link ;

int
bhnd_nvstore_register_path(struct bhnd_nvram_store *sc, const char *path_str,
    size_t path_len)
{
 bhnd_nvstore_path_list *plist;
 bhnd_nvstore_path *path;
 uint32_t h;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);


 if (bhnd_nvstore_get_path(sc, path_str, path_len) != ((void*)0))
  return (0);


 if (sc->num_paths == SIZE_MAX)
  return (ENOMEM);


 path = bhnd_nvstore_path_new(path_str, path_len);
 if (path == ((void*)0))
  return (ENOMEM);


 h = hash32_str(path->path_str, HASHINIT);
 plist = &sc->paths[h % nitems(sc->paths)];
 LIST_INSERT_HEAD(plist, path, np_link);


 sc->num_paths++;

 return (0);
}
