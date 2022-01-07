
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int root_path; int * data_opts; int data_caps; int data; int * aliases; scalar_t__ num_aliases; int * paths; scalar_t__ num_paths; } ;
struct bhnd_nvram_data {int dummy; } ;


 int BHND_NVSTORE_LOCK (struct bhnd_nvram_store*) ;
 int BHND_NVSTORE_LOCK_INIT (struct bhnd_nvram_store*) ;
 int BHND_NVSTORE_ROOT_PATH ;
 int BHND_NVSTORE_ROOT_PATH_LEN ;
 int BHND_NVSTORE_UNLOCK (struct bhnd_nvram_store*) ;
 int BHND_NV_ASSERT (int ,char*) ;
 int ENOMEM ;
 int LIST_INIT (int *) ;
 struct bhnd_nvram_store* bhnd_nv_calloc (int,int) ;
 int bhnd_nvram_data_caps (struct bhnd_nvram_data*) ;
 int * bhnd_nvram_data_options (struct bhnd_nvram_data*) ;
 int bhnd_nvram_data_retain (struct bhnd_nvram_data*) ;
 int * bhnd_nvram_plist_new () ;
 int bhnd_nvram_plist_retain (int *) ;
 int bhnd_nvram_store_free (struct bhnd_nvram_store*) ;
 int bhnd_nvstore_get_path (struct bhnd_nvram_store*,int ,int ) ;
 int bhnd_nvstore_parse_data (struct bhnd_nvram_store*) ;
 int bhnd_nvstore_register_path (struct bhnd_nvram_store*,int ,int ) ;
 size_t nitems (int *) ;

int
bhnd_nvram_store_new(struct bhnd_nvram_store **store,
    struct bhnd_nvram_data *data)
{
 struct bhnd_nvram_store *sc;
 int error;


 sc = bhnd_nv_calloc(1, sizeof(*sc));
 if (sc == ((void*)0))
  return (ENOMEM);

 BHND_NVSTORE_LOCK_INIT(sc);
 BHND_NVSTORE_LOCK(sc);


 sc->num_paths = 0;
 for (size_t i = 0; i < nitems(sc->paths); i++)
  LIST_INIT(&sc->paths[i]);


 sc->num_aliases = 0;
 for (size_t i = 0; i < nitems(sc->aliases); i++)
  LIST_INIT(&sc->aliases[i]);


 sc->data = bhnd_nvram_data_retain(data);
 sc->data_caps = bhnd_nvram_data_caps(data);
 sc->data_opts = bhnd_nvram_data_options(data);
 if (sc->data_opts != ((void*)0)) {
  bhnd_nvram_plist_retain(sc->data_opts);
 } else {
  sc->data_opts = bhnd_nvram_plist_new();
  if (sc->data_opts == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }
 }


 error = bhnd_nvstore_register_path(sc, BHND_NVSTORE_ROOT_PATH,
     BHND_NVSTORE_ROOT_PATH_LEN);
 if (error)
  goto cleanup;

 sc->root_path = bhnd_nvstore_get_path(sc, BHND_NVSTORE_ROOT_PATH,
     BHND_NVSTORE_ROOT_PATH_LEN);
 BHND_NV_ASSERT(sc->root_path, ("missing root path"));



 if ((error = bhnd_nvstore_parse_data(sc)))
  goto cleanup;

 *store = sc;

 BHND_NVSTORE_UNLOCK(sc);
 return (0);

cleanup:
 BHND_NVSTORE_UNLOCK(sc);
 bhnd_nvram_store_free(sc);
 return (error);
}
