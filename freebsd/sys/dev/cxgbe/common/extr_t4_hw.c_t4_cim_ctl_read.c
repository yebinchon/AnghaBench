
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 scalar_t__ CIM_CTL_BASE ;
 int t4_cim_read (struct adapter*,scalar_t__,unsigned int,unsigned int*) ;

int t4_cim_ctl_read(struct adapter *adap, unsigned int addr, unsigned int n,
      unsigned int *valp)
{
 return t4_cim_read(adap, addr + CIM_CTL_BASE, n, valp);
}
