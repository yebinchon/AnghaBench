
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int data_caps; int data; int * root_path; } ;
typedef int bhnd_nvstore_name_info ;


 int BHND_NVRAM_DATA_CAP_DEVPATHS ;
 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int BHND_NVSTORE_NAME_INTERNAL ;
 int BHND_NV_ASSERT (int ,char*) ;
 int BHND_NV_LOG (char*,char const*,int) ;
 int MA_OWNED ;
 char* bhnd_nvram_data_next (int ,void**) ;
 int bhnd_nvstore_parse_name_info (char const*,int ,int,int *) ;
 int bhnd_nvstore_var_register_path (struct bhnd_nvram_store*,int *,void*) ;

__attribute__((used)) static int
bhnd_nvstore_parse_path_entries(struct bhnd_nvram_store *sc)
{
 const char *name;
 void *cookiep;
 int error;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);



 if (!(sc->data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS)) {
  BHND_NV_ASSERT(sc->root_path != ((void*)0), ("missing root path"));
  return (0);
 }


 cookiep = ((void*)0);
 while ((name = bhnd_nvram_data_next(sc->data, &cookiep))) {
  bhnd_nvstore_name_info info;


  error = bhnd_nvstore_parse_name_info(name,
      BHND_NVSTORE_NAME_INTERNAL, sc->data_caps, &info);
  if (error)
   return (error);


  error = bhnd_nvstore_var_register_path(sc, &info, cookiep);
  if (error) {
   BHND_NV_LOG("failed to register path for %s: %d\n",
       name, error);
   return (error);
  }
 }

 return (0);
}
