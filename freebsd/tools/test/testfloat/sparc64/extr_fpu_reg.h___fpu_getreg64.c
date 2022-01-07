
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;


 scalar_t__* __fpreg ;

__attribute__((used)) static __inline u_int64_t
__fpu_getreg64(int r)
{

 return ((u_int64_t)__fpreg[r] << 32 | (u_int64_t)__fpreg[r + 1]);
}
