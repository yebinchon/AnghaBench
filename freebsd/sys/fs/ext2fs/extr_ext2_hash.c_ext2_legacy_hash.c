
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;



__attribute__((used)) static uint32_t
ext2_legacy_hash(const char *name, int len, int unsigned_char)
{
 uint32_t h0, h1 = 0x12A3FE2D, h2 = 0x37ABE8F9;
 uint32_t multi = 0x6D22F5;
 const unsigned char *uname = (const unsigned char *)name;
 const signed char *sname = (const signed char *)name;
 int val, i;

 for (i = 0; i < len; i++) {
  if (unsigned_char)
   val = (u_int)*uname++;
  else
   val = (int)*sname++;

  h0 = h2 + (h1 ^ (val * multi));
  if (h0 & 0x80000000)
   h0 -= 0x7FFFFFFF;
  h2 = h1;
  h1 = h0;
 }

 return (h1 << 1);
}
