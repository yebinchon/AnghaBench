
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t ocs_addr32_hi(uintptr_t addr)
{

 return (uint32_t)(addr >> 32);



}
