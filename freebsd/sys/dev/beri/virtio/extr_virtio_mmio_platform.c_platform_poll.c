
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int mips_dcache_wbinv_all () ;

__attribute__((used)) static int
platform_poll(device_t dev)
{

 mips_dcache_wbinv_all();

 return (0);
}
