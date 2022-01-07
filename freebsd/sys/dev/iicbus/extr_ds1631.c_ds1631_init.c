
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ds1631_softc {int init_done; } ;
typedef int device_t ;


 int DS1631_CONTROL ;
 int DS1631_CONTROL_10BIT ;
 int DS1631_CONTROL_1SHOT ;
 int DS1631_START ;
 int DS1631_STOP ;
 struct ds1631_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int ds1631_read_1 (int ,int ,int ,int*) ;
 int ds1631_write (int ,int ,int ,int*,int) ;

__attribute__((used)) static int
ds1631_init(device_t dev, uint32_t addr)
{
 uint8_t conf;
 int err;
 struct ds1631_softc *sc;

 sc = device_get_softc(dev);

 err = ds1631_read_1(dev, addr, DS1631_CONTROL, &conf);
 if (err < 0) {
  device_printf(dev, "ds1631 read config failed: %x\n", err);
  return (-1);
 }


 if (conf & ~DS1631_CONTROL_1SHOT)
  err = ds1631_write(dev, addr, DS1631_STOP, &conf, 0);





 conf = DS1631_CONTROL_10BIT;

 err = ds1631_write(dev, addr, DS1631_CONTROL, &conf, 1);
 if (err < 0) {
  device_printf(dev, "ds1631 write config failed: %x\n", err);
  return (-1);
 }


 err = ds1631_write(dev, addr, DS1631_START, &conf, 0);

 if (err < 0) {
  device_printf(dev, "ds1631 write start failed: %x\n", err);
  return (-1);
 }

 sc->init_done = 1;

 return (0);

}
