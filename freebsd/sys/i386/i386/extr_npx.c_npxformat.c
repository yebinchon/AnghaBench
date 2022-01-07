
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _MC_FPFMT_387 ;
 int _MC_FPFMT_NODEV ;
 int _MC_FPFMT_XMM ;
 scalar_t__ cpu_fxsr ;
 int hw_float ;

int
npxformat(void)
{

 if (!hw_float)
  return (_MC_FPFMT_NODEV);
 if (cpu_fxsr)
  return (_MC_FPFMT_XMM);
 return (_MC_FPFMT_387);
}
