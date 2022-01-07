
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;


 int ADDR_PIDX ;
 int ADDR_PIDX_SHFT ;
 int SR_VSID_MASK ;
 int moea_pteg_mask ;

__attribute__((used)) static __inline u_int
va_to_pteg(u_int sr, vm_offset_t addr)
{
 u_int hash;

 hash = (sr & SR_VSID_MASK) ^ (((u_int)addr & ADDR_PIDX) >>
     ADDR_PIDX_SHFT);
 return (hash & moea_pteg_mask);
}
