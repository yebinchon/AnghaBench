
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int KEY_CACHE_LEN ;
 int build_sym_key_cache (int *,int) ;

__attribute__((used)) static void
build_byte_cache(uint32_t byte_cache[256][4])
{

 int i, j, k;
 uint32_t key_cache[96];

 build_sym_key_cache(key_cache, 96);

 for (i = 0; i < 4; i++) {
  for (j = 0; j < 256; j++) {
   uint8_t b = j;
   byte_cache[j][i] = 0;
   for (k = 0; k < 8; k++) {
    if (b & 0x80)
     byte_cache[j][i] ^= key_cache[8 * i + k];
    b <<= 1U;
   }
  }
 }
}
