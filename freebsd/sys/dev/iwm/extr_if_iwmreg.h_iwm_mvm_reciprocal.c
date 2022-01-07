
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t iwm_mvm_reciprocal(uint32_t v)
{
 if (!v)
  return 0;
 return 0xFFFFFFFF / v;
}
