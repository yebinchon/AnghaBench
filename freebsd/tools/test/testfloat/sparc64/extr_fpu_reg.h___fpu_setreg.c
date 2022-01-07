
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int * __fpreg ;

__attribute__((used)) static __inline void
__fpu_setreg(int r, u_int32_t v)
{

 __fpreg[r] = v;
}
