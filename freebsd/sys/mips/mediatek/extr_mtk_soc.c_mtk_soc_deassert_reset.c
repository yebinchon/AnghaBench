
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int fdt_reset_deassert_all (int ) ;

int
mtk_soc_deassert_reset(device_t dev)
{

 return (fdt_reset_deassert_all(dev));
}
