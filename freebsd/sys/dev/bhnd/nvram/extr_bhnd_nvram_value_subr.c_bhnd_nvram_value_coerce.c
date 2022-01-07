
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_BORROW_DATA ;
 int BHND_NVRAM_VAL_FIXED ;
 int bhnd_nvram_val_encode (int *,void*,size_t*,int ) ;
 int bhnd_nvram_val_init (int *,int *,void const*,size_t,int ,int) ;
 int bhnd_nvram_val_release (int *) ;

int
bhnd_nvram_value_coerce(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 bhnd_nvram_val val;
 int error;


 error = bhnd_nvram_val_init(&val, ((void*)0), inp, ilen,
     itype, BHND_NVRAM_VAL_BORROW_DATA|BHND_NVRAM_VAL_FIXED);
 if (error)
  return (error);


 error = bhnd_nvram_val_encode(&val, outp, olen, otype);


 bhnd_nvram_val_release(&val);
 return (error);
}
