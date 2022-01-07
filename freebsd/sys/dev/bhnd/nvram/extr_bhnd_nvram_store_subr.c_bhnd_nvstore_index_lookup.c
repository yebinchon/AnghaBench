
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct bhnd_nvram_store {int data_caps; int data; } ;
struct TYPE_3__ {int count; void** cookiep; } ;
typedef TYPE_1__ bhnd_nvstore_index ;


 int BHND_NVRAM_DATA_CAP_DEVPATHS ;
 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int BHND_NV_ASSERT (int ,char*) ;
 int MA_OWNED ;
 char* bhnd_nvram_data_getvar_name (int ,void*) ;
 char* bhnd_nvram_trim_path_name (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

void *
bhnd_nvstore_index_lookup(struct bhnd_nvram_store *sc,
    bhnd_nvstore_index *index, const char *name)
{
 void *cookiep;
 const char *indexed_name;
 size_t min, mid, max;
 uint32_t data_caps;
 int order;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);
 BHND_NV_ASSERT(index != ((void*)0), ("NULL index"));




 if (index->count == 0)
  return (((void*)0));

 data_caps = sc->data_caps;
 min = 0;
 max = index->count - 1;

 while (max >= min) {

  mid = (min + max) / 2;
  cookiep = index->cookiep[mid];


  indexed_name = bhnd_nvram_data_getvar_name(sc->data, cookiep);


  if (data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS)
   indexed_name = bhnd_nvram_trim_path_name(indexed_name);


  order = strcmp(indexed_name, name);
  if (order < 0) {

   min = mid + 1;
  } else if (order > 0) {

   if (mid == 0)
    break;
   max = mid - 1;
  } else if (order == 0) {
   size_t idx;
   idx = mid;
   while (idx > 0) {
    void *dup_cookiep;
    const char *dup_name;


    idx--;
    dup_cookiep = index->cookiep[idx];
    dup_name = bhnd_nvram_data_getvar_name(sc->data,
        dup_cookiep);


    if (data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS) {
     dup_name = bhnd_nvram_trim_path_name(
         dup_name);
    }



    if (strcmp(indexed_name, dup_name) != 0)
     return (cookiep);




    cookiep = dup_cookiep;
   }

   return (cookiep);
  }
 }


 return (((void*)0));
}
