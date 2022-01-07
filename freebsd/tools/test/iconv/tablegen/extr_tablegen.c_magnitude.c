
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
magnitude(const uint32_t p)
{

 if (p >> 8 == 0)
  return (1);
 else if (p >> 16 == 0)
  return (2);
 else
  return (p >> 24 == 0 ? 3 : 4);
}
