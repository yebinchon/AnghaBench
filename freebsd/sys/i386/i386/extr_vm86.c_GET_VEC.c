
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;



__attribute__((used)) static __inline void
GET_VEC(u_int vec, u_short *sel, u_short *off)
{
 *sel = vec >> 16;
 *off = vec & 0xffff;
}
