
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uintmax_t ;
typedef scalar_t__ const uint32_t ;



__attribute__((used)) static uint32_t clamp32(uintmax_t n)
{
 const uintmax_t max = 0xffffffff;
 return (n < max) ? n : max;
}
