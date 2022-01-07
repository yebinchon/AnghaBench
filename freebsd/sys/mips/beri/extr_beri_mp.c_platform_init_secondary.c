
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int beripic_setup_ipi (int ,int,int) ;
 int devclass_find (char*) ;
 int devclass_get_device (int ,int) ;
 int mips_rd_status () ;
 int mips_wr_status (int) ;
 int * picmap ;
 int platform_ipi_hardintr_num () ;

void
platform_init_secondary(int cpuid)
{
 device_t ic;
 int ipi;

 ipi = platform_ipi_hardintr_num();

 ic = devclass_get_device(devclass_find("beripic"), cpuid);
 picmap[cpuid] = ic;
 beripic_setup_ipi(ic, cpuid, ipi);


 if (cpuid != 0) {
  mips_wr_status(mips_rd_status() | (((1 << ipi) << 8) << 2));
 }
}
