
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_sprom_getvar_common (struct bhnd_nvram_data*,void*,union bhnd_nvram_sprom_storage*,int *) ;
 int bhnd_nvram_val_encode (int *,void*,size_t*,int ) ;
 int bhnd_nvram_val_release (int *) ;

__attribute__((used)) static int
bhnd_nvram_sprom_getvar(struct bhnd_nvram_data *nv, void *cookiep, void *buf,
    size_t *len, bhnd_nvram_type otype)
{
 bhnd_nvram_val val;
 union bhnd_nvram_sprom_storage storage;
 int error;


 error = bhnd_nvram_sprom_getvar_common(nv, cookiep, &storage, &val);
 if (error)
  return (error);


 error = bhnd_nvram_val_encode(&val, buf, len, otype);


 bhnd_nvram_val_release(&val);
 return (error);
}
