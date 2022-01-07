
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int get_le32_split (int const,int const,int const,int const) ;

__attribute__((used)) static __inline u32 get_le32(const u8 *p)
{
 return get_le32_split(p[0], p[1], p[2], p[3]);
}
