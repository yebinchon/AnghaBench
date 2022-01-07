
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static int32_t
z_roundpow2(int32_t v)
{
 int32_t i;

 i = 1;




 while (i > 0 && i < v)
  i <<= 1;

 return (i);
}
