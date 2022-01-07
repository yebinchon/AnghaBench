
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e6000sw_softc_t ;
typedef int device_t ;


 int EINVAL ;
 int REG_GLOBAL2 ;
 int REG_NUM_MAX ;
 int REG_PORT (int *,int ) ;
 int * device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int e6000sw_writereg (int *,int,int,int) ;

__attribute__((used)) static int
e6000sw_writereg_wrapper(device_t dev, int addr_reg, int val)
{
 e6000sw_softc_t *sc;

 sc = device_get_softc(dev);
 if ((addr_reg > (REG_GLOBAL2 * 32 + REG_NUM_MAX)) ||
     (addr_reg < (REG_PORT(sc, 0) * 32))) {
  device_printf(dev, "Wrong register address.\n");
  return (EINVAL);
 }
 e6000sw_writereg(device_get_softc(dev), addr_reg / 5,
     addr_reg % 32, val);

 return (0);
}
