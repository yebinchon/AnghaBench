
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;



__attribute__((used)) static __inline u_int
MAKE_VEC(u_short sel, u_short off)
{
 return ((sel << 16) | off);
}
