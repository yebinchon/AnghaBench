
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bhnd_nvram_type ;



 int BHND_NV_ASSERT (int,char*) ;
 int EFTYPE ;
 int ENOMEM ;

__attribute__((used)) static int
bhnd_nvram_val_encode_null(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 size_t limit, nbytes;

 BHND_NV_ASSERT(itype == 128,
     ("unsupported type: %d", itype));


 if (outp != ((void*)0))
  limit = *olen;
 else
  limit = 0;

 nbytes = 0;


 switch (otype) {
 case 128:

  nbytes = 0;
  break;
 default:

  return (EFTYPE);
 }


 *olen = nbytes;
 if (limit < *olen) {
  if (outp == ((void*)0))
   return (0);

  return (ENOMEM);
 }

 return (0);
}
