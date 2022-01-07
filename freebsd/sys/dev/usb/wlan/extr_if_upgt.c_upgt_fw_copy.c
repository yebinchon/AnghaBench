
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int
upgt_fw_copy(const uint8_t *src, char *dst, int size)
{
 int i, j;

 for (i = 0, j = 0; i < size && j < size; i++) {
  switch (src[i]) {
  case 0x7e:
   dst[j] = 0x7d;
   j++;
   dst[j] = 0x5e;
   j++;
   break;
  case 0x7d:
   dst[j] = 0x7d;
   j++;
   dst[j] = 0x5d;
   j++;
   break;
  default:
   dst[j] = src[i];
   j++;
   break;
  }
 }

 return (i);
}
