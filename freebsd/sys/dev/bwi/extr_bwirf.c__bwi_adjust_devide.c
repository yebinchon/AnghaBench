
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static __inline int32_t
_bwi_adjust_devide(int32_t num, int32_t den)
{
 if (num < 0)
  return (num / den);
 else
  return (num + den / 2) / den;
}
