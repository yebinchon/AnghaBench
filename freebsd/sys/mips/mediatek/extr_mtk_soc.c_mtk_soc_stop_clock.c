
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int fdt_clock_disable_all (int ) ;

int
mtk_soc_stop_clock(device_t dev)
{

 return (fdt_clock_disable_all(dev));
}
