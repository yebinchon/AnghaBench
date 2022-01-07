
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static __inline u32 get_le32_split(u8 b0, u8 b1, u8 b2, u8 b3)
{
 return b0 | (b1 << 8) | (b2 << 16) | (b3 << 24);
}
