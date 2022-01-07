
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int le32dec (int const*) ;
 int rol32 (int,int) ;

uint32_t
murmur3_32_hash(const void *data, size_t len, uint32_t seed)
{
 const uint8_t *bytes;
 uint32_t hash, k;
 size_t res;


 bytes = data;
 res = len;
 hash = seed;


 while (res >= 4) {

  k = le32dec(bytes);
  bytes += 4;
  res -= 4;
  k *= 0xcc9e2d51;
  k = rol32(k, 15);
  k *= 0x1b873593;
  hash ^= k;
  hash = rol32(hash, 13);
  hash *= 5;
  hash += 0xe6546b64;
 }



 if (res > 0) {
  k = 0;
  switch (res) {
  case 3:
   k |= bytes[2] << 16;
  case 2:
   k |= bytes[1] << 8;
  case 1:
   k |= bytes[0];
   k *= 0xcc9e2d51;
   k = rol32(k, 15);
   k *= 0x1b873593;
   hash ^= k;
   break;
  }
 }


 hash ^= (uint32_t)len;
 hash ^= hash >> 16;
 hash *= 0x85ebca6b;
 hash ^= hash >> 13;
 hash *= 0xc2b2ae35;
 hash ^= hash >> 16;
 return (hash);
}
