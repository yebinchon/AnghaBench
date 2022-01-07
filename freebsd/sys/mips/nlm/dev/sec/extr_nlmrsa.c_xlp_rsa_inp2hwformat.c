
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static int
xlp_rsa_inp2hwformat(uint8_t *src, uint8_t *dst, uint32_t paramsize,
    uint8_t result)
{
 uint32_t pdwords, pbytes;
 int i, j, k;

 pdwords = paramsize / 8;
 pbytes = paramsize % 8;

 for (i = 0, k = 0; i < pdwords; i++) {

  for (j = 7; j >= 0; j--, k++)
   dst[i * 8 + j] = src[k];
 }
 if (pbytes) {
  if (result == 0) {

   for (j = 7; k < paramsize; j--, k++)
    dst[i * 8 + j] = src[k];
  } else {

   for (j = 7; k < paramsize; j--, k++)
    dst[k] = src[i * 8 + j];
  }
 }

 return (0);
}
