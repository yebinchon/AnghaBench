
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int data_caps; int data; } ;


 int BHND_NVRAM_DATA_CAP_DEVPATHS ;
 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int MA_OWNED ;
 char* bhnd_nvram_data_getvar_name (int ,void*) ;
 int bhnd_nvram_data_getvar_order (int ,void*,void*) ;
 char* bhnd_nvram_trim_path_name (char const*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
bhnd_nvstore_idx_cmp(void *ctx, const void *lhs, const void *rhs)
{
 struct bhnd_nvram_store *sc;
 void *l_cookiep, *r_cookiep;
 const char *l_str, *r_str;
 const char *l_name, *r_name;
 int order;

 sc = ctx;
 l_cookiep = *(void * const *)lhs;
 r_cookiep = *(void * const *)rhs;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);


 l_str = bhnd_nvram_data_getvar_name(sc->data, l_cookiep);
 r_str = bhnd_nvram_data_getvar_name(sc->data, r_cookiep);


 if (sc->data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS) {
  l_name = bhnd_nvram_trim_path_name(l_str);
  r_name = bhnd_nvram_trim_path_name(r_str);
 } else {
  l_name = l_str;
  r_name = r_str;
 }


 order = strcmp(l_name, r_name);
 if (order != 0 || lhs == rhs)
  return (order);







 return (bhnd_nvram_data_getvar_order(sc->data, l_cookiep, r_cookiep));
}
