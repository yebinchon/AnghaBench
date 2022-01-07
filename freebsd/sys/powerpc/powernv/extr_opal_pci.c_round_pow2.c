
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int flsl (int) ;

__attribute__((used)) static uint64_t
round_pow2(uint64_t val)
{

 return (1 << (flsl(val + (val - 1)) - 1));
}
