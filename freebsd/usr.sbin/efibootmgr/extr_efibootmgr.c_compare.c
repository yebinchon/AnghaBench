
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int memcpy (scalar_t__*,void const*,int) ;

__attribute__((used)) static int
compare(const void *a, const void *b)
{
 uint16_t c;
 uint16_t d;

 memcpy(&c, a, sizeof(uint16_t));
 memcpy(&d, b, sizeof(uint16_t));

 if (c < d)
  return -1;
 if (c == d)
  return 0;
 return 1;
}
