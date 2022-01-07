
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;



__attribute__((used)) static __inline uint16_t
gre_cksum_add(uint16_t sum, uint16_t a)
{
 uint16_t res;

 res = sum + a;
 return (res + (res < a));
}
