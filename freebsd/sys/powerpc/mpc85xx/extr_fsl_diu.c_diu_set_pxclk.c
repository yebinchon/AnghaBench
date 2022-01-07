
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OCP85XX_CLKDVDR ;
 int OCP85XX_CLKDVDR_PXCKEN ;
 int OCP85XX_CLKDVDR_PXCKINV ;
 int OCP85XX_CLKDVDR_PXCLK_MASK ;
 int ccsr_read4 (int ) ;
 int ccsr_write4 (int ,int) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int max (unsigned long,int) ;
 int min (int ,int) ;
 unsigned long mpc85xx_get_platform_clock () ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
diu_set_pxclk(device_t dev, unsigned int freq)
{
 phandle_t node;
 unsigned long bus_freq;
 uint32_t pxclk_set;
 uint32_t clkdvd;

 node = ofw_bus_get_node(device_get_parent(dev));
 if ((bus_freq = mpc85xx_get_platform_clock()) <= 0) {
  device_printf(dev, "Unable to get bus frequency\n");
  return (ENXIO);
 }


 freq *= 1000;

 pxclk_set = min(max((bus_freq + freq/2) / freq, 2), 255) << 16;
 pxclk_set |= OCP85XX_CLKDVDR_PXCKEN;
 clkdvd = ccsr_read4(OCP85XX_CLKDVDR);
 clkdvd &= ~(OCP85XX_CLKDVDR_PXCKEN | OCP85XX_CLKDVDR_PXCKINV |
  OCP85XX_CLKDVDR_PXCLK_MASK);
 ccsr_write4(OCP85XX_CLKDVDR, clkdvd);
 ccsr_write4(OCP85XX_CLKDVDR, clkdvd | pxclk_set);

 return (0);
}
