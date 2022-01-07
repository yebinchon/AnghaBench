
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_vardefn {int * fmt; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val_fmt ;
typedef scalar_t__ bhnd_nvram_type ;


 int BHND_NVRAM_DATA_CAP_DEVPATHS ;
 int BHND_NVRAM_DATA_CAP_READ_PTR ;
 scalar_t__ BHND_NVRAM_TYPE_STRING ;
 int BHND_NV_ASSERT (int,char*) ;
 int bhnd_nvram_data_caps (struct bhnd_nvram_data*) ;
 char* bhnd_nvram_data_getvar_name (struct bhnd_nvram_data*,void*) ;
 void* bhnd_nvram_data_getvar_ptr (struct bhnd_nvram_data*,void*,size_t*,scalar_t__*) ;
 struct bhnd_nvram_vardefn* bhnd_nvram_find_vardefn (char const*) ;
 char* bhnd_nvram_trim_path_name (char const*) ;
 int bhnd_nvram_val_bcm_string_fmt ;
 int * bhnd_nvram_val_default_fmt (scalar_t__) ;

__attribute__((used)) static const void *
bhnd_nvram_data_getvar_ptr_info(struct bhnd_nvram_data *nv, void *cookiep,
    size_t *len, bhnd_nvram_type *type, const bhnd_nvram_val_fmt **fmt)
{
 const struct bhnd_nvram_vardefn *vdefn;
 const char *name;
 const void *vptr;

 BHND_NV_ASSERT(bhnd_nvram_data_caps(nv) & BHND_NVRAM_DATA_CAP_READ_PTR,
     ("instance does not advertise READ_PTR support"));


 vptr = bhnd_nvram_data_getvar_ptr(nv, cookiep, len, type);
 if (vptr == ((void*)0))
  return (((void*)0));





 name = bhnd_nvram_data_getvar_name(nv, cookiep);



 if (bhnd_nvram_data_caps(nv) & BHND_NVRAM_DATA_CAP_DEVPATHS)
  name = bhnd_nvram_trim_path_name(name);



 vdefn = bhnd_nvram_find_vardefn(name);
 if (vdefn != ((void*)0)) {
  BHND_NV_ASSERT(vdefn->fmt != ((void*)0),
      ("NULL format for %s", name));
  *fmt = vdefn->fmt;
 } else if (*type == BHND_NVRAM_TYPE_STRING) {

  *fmt = &bhnd_nvram_val_bcm_string_fmt;
 } else {

  *fmt = bhnd_nvram_val_default_fmt(*type);
 }

 return (vptr);
}
