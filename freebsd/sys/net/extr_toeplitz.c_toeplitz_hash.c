
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;


 int RSS_KEYSIZE ;

uint32_t
toeplitz_hash(u_int keylen, const uint8_t *key, u_int datalen,
    const uint8_t *data)
{
 uint32_t hash = 0, v;
 u_int i, b;



 v = (key[0]<<24) + (key[1]<<16) + (key[2] <<8) + key[3];
 for (i = 0; i < datalen; i++) {
  for (b = 0; b < 8; b++) {
   if (data[i] & (1<<(7-b)))
    hash ^= v;
   v <<= 1;
   if ((i + 4) < RSS_KEYSIZE &&
       (key[i+4] & (1<<(7-b))))
    v |= 1;
  }
 }
 return (hash);
}
