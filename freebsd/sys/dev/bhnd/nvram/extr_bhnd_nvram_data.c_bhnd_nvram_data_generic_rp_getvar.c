
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_DATA_CAP_READ_PTR ;
 int BHND_NVRAM_VAL_BORROW_DATA ;
 int BHND_NV_ASSERT (int,char*) ;
 int EINVAL ;
 int bhnd_nvram_data_caps (struct bhnd_nvram_data*) ;
 void* bhnd_nvram_data_getvar_ptr_info (struct bhnd_nvram_data*,void*,size_t*,int *,int const**) ;
 int bhnd_nvram_val_encode (int *,void*,size_t*,int ) ;
 int bhnd_nvram_val_init (int *,int const*,void const*,size_t,int ,int ) ;
 int bhnd_nvram_val_release (int *) ;

int
bhnd_nvram_data_generic_rp_getvar(struct bhnd_nvram_data *nv, void *cookiep,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 bhnd_nvram_val val;
 const bhnd_nvram_val_fmt *fmt;
 const void *vptr;
 bhnd_nvram_type vtype;
 size_t vlen;
 int error;

 BHND_NV_ASSERT(bhnd_nvram_data_caps(nv) & BHND_NVRAM_DATA_CAP_READ_PTR,
     ("instance does not advertise READ_PTR support"));


 vptr = bhnd_nvram_data_getvar_ptr_info(nv, cookiep, &vlen, &vtype,
     &fmt);
 if (vptr == ((void*)0))
  return (EINVAL);


 error = bhnd_nvram_val_init(&val, fmt, vptr, vlen, vtype,
     BHND_NVRAM_VAL_BORROW_DATA);
 if (error)
  return (error);

 error = bhnd_nvram_val_encode(&val, outp, olen, otype);


 bhnd_nvram_val_release(&val);
 return (error);
}
