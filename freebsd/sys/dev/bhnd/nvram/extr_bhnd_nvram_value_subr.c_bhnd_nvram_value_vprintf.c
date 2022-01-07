
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_BORROW_DATA ;
 int bhnd_nvram_val_init (int *,int *,void const*,size_t,int ,int ) ;
 int bhnd_nvram_val_release (int *) ;
 int bhnd_nvram_val_vprintf (int *,char const*,char*,size_t*,int ) ;

int
bhnd_nvram_value_vprintf(const char *fmt, const void *inp, size_t ilen,
    bhnd_nvram_type itype, char *outp, size_t *olen, va_list ap)
{
 bhnd_nvram_val val;
 int error;


 error = bhnd_nvram_val_init(&val, ((void*)0), inp, ilen, itype,
     BHND_NVRAM_VAL_BORROW_DATA);
 if (error)
  return (error);


 error = bhnd_nvram_val_vprintf(&val, fmt, outp, olen, ap);


 bhnd_nvram_val_release(&val);
 return (error);
}
