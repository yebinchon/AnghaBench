
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int * __fpreg ;

__attribute__((used)) static __inline u_int32_t
__fpu_getreg(int r)
{

 return (__fpreg[r]);
}
