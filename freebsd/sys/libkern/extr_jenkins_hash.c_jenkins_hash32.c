
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int final (int,int,int) ;
 int mix (int,int,int) ;

uint32_t jenkins_hash32(
const uint32_t *k,
size_t length,
uint32_t initval)
{
  uint32_t a,b,c;


  a = b = c = 0xdeadbeef + (((uint32_t)length)<<2) + initval;


  while (length > 3)
  {
    a += k[0];
    b += k[1];
    c += k[2];
    mix(a,b,c);
    length -= 3;
    k += 3;
  }


  switch(length)
  {
  case 3 : c+=k[2];
  case 2 : b+=k[1];
  case 1 : a+=k[0];
    final(a,b,c);
  case 0:
    break;
  }

  return c;
}
