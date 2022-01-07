
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* lz_crc ;
 unsigned int nitems (unsigned int*) ;

__attribute__((used)) static void
lz_crc_init(void)
{
 for (unsigned i = 0; i < nitems(lz_crc); i++) {
  unsigned c = i;
  for (unsigned j = 0; j < 8; j++) {
   if (c & 1)
    c = 0xEDB88320U ^ (c >> 1);
   else
    c >>= 1;
  }
  lz_crc[i] = c;
      }
}
