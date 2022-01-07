
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int caddr_t ;



__attribute__((used)) static __inline caddr_t
MAKE_ADDR(u_short sel, u_short off)
{
 return ((caddr_t)((sel << 4) + off));
}
