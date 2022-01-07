
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u_int8_t ;
typedef int u_int ;



__attribute__((used)) static int
key_bbcmp(const void *a1, const void *a2, u_int bits)
{
 const unsigned char *p1 = a1;
 const unsigned char *p2 = a2;





 if (p1 == ((void*)0) || p2 == ((void*)0))
  return (p1 == p2);

 while (bits >= 8) {
  if (*p1++ != *p2++)
   return 0;
  bits -= 8;
 }

 if (bits > 0) {
  u_int8_t mask = ~((1<<(8-bits))-1);
  if ((*p1 & mask) != (*p2 & mask))
   return 0;
 }
 return 1;
}
