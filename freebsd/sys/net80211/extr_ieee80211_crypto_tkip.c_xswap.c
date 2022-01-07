
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static __inline u32 xswap(u32 val)
{
 return ((val & 0x00ff00ff) << 8) | ((val & 0xff00ff00) >> 8);
}
