
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
xtract(uint32_t val, int shift, int len)
{
 return (val >> shift) & ((1 << len) - 1);
}
