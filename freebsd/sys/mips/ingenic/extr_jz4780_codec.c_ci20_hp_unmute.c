
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codec_softc {int dummy; } ;
typedef int * device_t ;


 int CI20_HP_PIN ;
 int CI20_HP_PORT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int,int ) ;
 int GPIO_PIN_SETFLAGS (int *,int,int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;
 int device_get_nameunit (int *) ;
 int device_printf (int *,char*,int,int ) ;

__attribute__((used)) static int
ci20_hp_unmute(struct codec_softc *sc)
{
 device_t dev;
 int port;
 int err;
 int pin;

 pin = CI20_HP_PIN;
 port = CI20_HP_PORT;

 dev = devclass_get_device(devclass_find("gpio"), port);
 if (dev == ((void*)0))
  return (0);

 err = GPIO_PIN_SETFLAGS(dev, pin, GPIO_PIN_OUTPUT);
 if (err != 0) {
  device_printf(dev, "Cannot configure GPIO pin %d on %s\n",
      pin, device_get_nameunit(dev));
  return (err);
 }

 err = GPIO_PIN_SET(dev, pin, 0);
 if (err != 0) {
  device_printf(dev, "Cannot configure GPIO pin %d on %s\n",
      pin, device_get_nameunit(dev));
  return (err);
 }

 return (0);
}
