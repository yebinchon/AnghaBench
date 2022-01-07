
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_3__ {int high; int low; } ;
typedef TYPE_1__ float128 ;


 scalar_t__* __fpreg ;

__attribute__((used)) static __inline void
__fpu_setreg128(int r, float128 v)
{

 __fpreg[r] = (u_int32_t)(v.high >> 32);
 __fpreg[r + 1] = (u_int32_t)v.high;
 __fpreg[r + 2] = (u_int32_t)(v.low >> 32);
 __fpreg[r + 3] = (u_int32_t)v.low;
}
