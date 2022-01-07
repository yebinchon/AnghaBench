
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int SYSCTL_GPIOMODE ;
 scalar_t__ bootverbose ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int fdt_pinctrl_configure_tree (int ) ;
 int fdt_pinctrl_register (int ,int *) ;
 int mtk_sysctl_get (int ) ;

__attribute__((used)) static int
mtk_pinctrl_attach(device_t dev)
{

 if (device_get_unit(dev) != 0) {
  device_printf(dev, "Only one pin control allowed\n");
  return (ENXIO);
 }

 if (bootverbose)
  device_printf(dev, "GPIO mode start: 0x%08x\n",
      mtk_sysctl_get(SYSCTL_GPIOMODE));

 fdt_pinctrl_register(dev, ((void*)0));
 fdt_pinctrl_configure_tree(dev);

 if (bootverbose)
  device_printf(dev, "GPIO mode end  : 0x%08x\n",
      mtk_sysctl_get(SYSCTL_GPIOMODE));

 return (0);
}
