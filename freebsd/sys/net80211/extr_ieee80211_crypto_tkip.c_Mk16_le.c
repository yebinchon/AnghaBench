
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int le16toh (int const) ;

__attribute__((used)) static __inline u16 Mk16_le(const u16 *v)
{
 return le16toh(*v);
}
