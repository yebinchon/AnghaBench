
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val ;


 int ENOMEM ;
 int bhnd_nvram_sprom_getvar_common (struct bhnd_nvram_data*,void*,union bhnd_nvram_sprom_storage*,int *) ;
 int * bhnd_nvram_val_copy (int *) ;
 int bhnd_nvram_val_release (int *) ;

__attribute__((used)) static int
bhnd_nvram_sprom_copy_val(struct bhnd_nvram_data *nv, void *cookiep,
    bhnd_nvram_val **value)
{
 bhnd_nvram_val val;
 union bhnd_nvram_sprom_storage storage;
 int error;


 error = bhnd_nvram_sprom_getvar_common(nv, cookiep, &storage, &val);
 if (error)
  return (error);


 *value = bhnd_nvram_val_copy(&val);
 bhnd_nvram_val_release(&val);

 if (*value == ((void*)0))
  return (ENOMEM);

 return (0);
}
