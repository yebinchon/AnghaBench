
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int abs (int ) ;

__attribute__((used)) static uint8_t
bwn_nbits(int32_t val)
{
 uint32_t tmp;
 uint8_t nbits = 0;

 for (tmp = abs(val); tmp != 0; tmp >>= 1)
  nbits++;
 return (nbits);
}
