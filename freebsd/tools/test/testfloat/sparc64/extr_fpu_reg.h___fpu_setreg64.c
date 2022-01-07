
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef scalar_t__ u_int32_t ;


 scalar_t__* __fpreg ;

__attribute__((used)) static __inline void
__fpu_setreg64(int r, u_int64_t v)
{

 __fpreg[r] = (u_int32_t)(v >> 32);
 __fpreg[r + 1] = (u_int32_t)v;
}
