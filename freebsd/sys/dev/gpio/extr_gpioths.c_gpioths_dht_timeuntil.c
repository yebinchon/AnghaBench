
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int device_t ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int GPIOBUS_PIN_GET (int ,int ,int ,scalar_t__*) ;
 int GPIOTHS_DHT_TIMEOUT ;

__attribute__((used)) static int
gpioths_dht_timeuntil(device_t bus, device_t dev, uint32_t lev, uint32_t *time)
{
 uint32_t cur_level;
 int i;

 for (i = 0; i < GPIOTHS_DHT_TIMEOUT; i++) {
  GPIOBUS_PIN_GET(bus, dev, 0, &cur_level);
  if (cur_level == lev) {
   if (time != ((void*)0))
    *time = i;
   return (0);
  }
  DELAY(1);
 }


 return (ETIMEDOUT);
}
