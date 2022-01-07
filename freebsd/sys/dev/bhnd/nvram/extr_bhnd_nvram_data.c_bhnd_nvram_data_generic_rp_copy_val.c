
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_DATA_CAP_READ_PTR ;
 int BHND_NVRAM_VAL_DYNAMIC ;
 int BHND_NV_ASSERT (int,char*) ;
 int EINVAL ;
 int bhnd_nvram_data_caps (struct bhnd_nvram_data*) ;
 void* bhnd_nvram_data_getvar_ptr_info (struct bhnd_nvram_data*,void*,size_t*,int *,int const**) ;
 int bhnd_nvram_val_new (int **,int const*,void const*,size_t,int ,int ) ;

int
bhnd_nvram_data_generic_rp_copy_val(struct bhnd_nvram_data *nv,
    void *cookiep, bhnd_nvram_val **value)
{
 const bhnd_nvram_val_fmt *fmt;
 const void *vptr;
 bhnd_nvram_type vtype;
 size_t vlen;

 BHND_NV_ASSERT(bhnd_nvram_data_caps(nv) & BHND_NVRAM_DATA_CAP_READ_PTR,
     ("instance does not advertise READ_PTR support"));


 vptr = bhnd_nvram_data_getvar_ptr_info(nv, cookiep, &vlen, &vtype,
     &fmt);
 if (vptr == ((void*)0))
  return (EINVAL);


 return (bhnd_nvram_val_new(value, fmt, vptr, vlen, vtype,
     BHND_NVRAM_VAL_DYNAMIC));
}
