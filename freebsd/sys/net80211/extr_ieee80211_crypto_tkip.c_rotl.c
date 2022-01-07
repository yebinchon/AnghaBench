
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static __inline u32 rotl(u32 val, int bits)
{
 return (val << bits) | (val >> (32 - bits));
}
