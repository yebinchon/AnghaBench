
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_3__ {int high; int low; } ;
typedef TYPE_1__ float128 ;


 scalar_t__* __fpreg ;

__attribute__((used)) static __inline float128
__fpu_getreg128(int r)
{
 float128 v;

 v.high = ((u_int64_t)__fpreg[r] << 32 | (u_int64_t)__fpreg[r + 1]);
 v.low = ((u_int64_t)__fpreg[r + 2] << 32 | (u_int64_t)__fpreg[r + 3]);
 return (v);
}
