
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int smc_attach (int ) ;

__attribute__((used)) static int
smc_fdt_attach(device_t dev)
{

 return smc_attach(dev);
}
