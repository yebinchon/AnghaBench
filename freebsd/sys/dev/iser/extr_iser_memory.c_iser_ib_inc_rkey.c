
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32
iser_ib_inc_rkey(u32 rkey)
{
 const u32 mask = 0x000000ff;

 return (((rkey + 1) & mask) | (rkey & ~mask));
}
