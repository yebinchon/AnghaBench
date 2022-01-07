
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* op_filter ) (TYPE_1__ const**,void const*,size_t,scalar_t__) ;scalar_t__ native_type; } ;
typedef TYPE_1__ bhnd_nvram_val_fmt ;
typedef scalar_t__ bhnd_nvram_type ;


 int EFTYPE ;
 int bhnd_nvram_value_check_aligned (void const*,size_t,scalar_t__) ;
 int stub1 (TYPE_1__ const**,void const*,size_t,scalar_t__) ;

__attribute__((used)) static int
bhnd_nvram_val_fmt_filter(const bhnd_nvram_val_fmt **fmt, const void *inp,
    size_t ilen, bhnd_nvram_type itype)
{
 const bhnd_nvram_val_fmt *ofmt, *nfmt;
 int error;

 nfmt = ofmt = *fmt;


 if ((error = bhnd_nvram_value_check_aligned(inp, ilen, itype)))
  return (error);



 if (ofmt->op_filter == ((void*)0)) {
  if (itype == ofmt->native_type)
   return (0);

  return (EFTYPE);
 }



 error = ofmt->op_filter(&nfmt, inp, ilen, itype);
 if (error)
  return (error);


 if (ofmt != nfmt) {
  error = bhnd_nvram_val_fmt_filter(&nfmt, inp, ilen, itype);
  if (error)
   return (error);


  *fmt = nfmt;
 }


 return (0);
}
