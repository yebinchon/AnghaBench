
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_rd_ebase () ;

int
platform_processor_id(void)
{

 return (mips_rd_ebase() & 7);
}
