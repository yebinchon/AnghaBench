
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint32_t ;
struct gpioths_softc {int fails; int temp; int hum; } ;
typedef int device_t ;
typedef int crc ;


 int DELAY (int) ;
 int GPIOBUS_PIN_SETFLAGS (int ,int ,int ,int ) ;
 int GPIOTHS_DHT_CYCLES ;
 int GPIOTHS_DHT_HUM_SHIFT ;
 int GPIOTHS_DHT_ONEBYTEMASK ;
 int GPIOTHS_DHT_TEMP_SHIFT ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;
 struct gpioths_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,...) ;
 int gpioths_dht_initread (int ,int ) ;
 int gpioths_dht_timeuntil (int ,int ,int ,int*) ;

__attribute__((used)) static int
gpioths_dht_readbytes(device_t bus, device_t dev)
{
 struct gpioths_softc *sc;
 uint32_t calibrations[GPIOTHS_DHT_CYCLES];
 uint32_t intervals[GPIOTHS_DHT_CYCLES];
 uint32_t err, avglen, value;
 uint8_t crc, calc;
 int i, offset, size;

 sc = device_get_softc(dev);

 err = gpioths_dht_initread(bus,dev);
 if (err) {
  device_printf(dev, "gpioths_dht_initread error = %d\n", err);
  goto error;
 }

 err = gpioths_dht_timeuntil(bus, dev, GPIO_PIN_LOW, ((void*)0));
 if (err) {
  device_printf(dev, "err(START) = %d\n", err);
  goto error;
 }


 for (i = 0; i < GPIOTHS_DHT_CYCLES; i++) {
  err = gpioths_dht_timeuntil(bus, dev, GPIO_PIN_HIGH,
            &calibrations[i]);
  if (err) {
   device_printf(dev, "err(CAL, %d) = %d\n", i, err);
   goto error;
  }
  err = gpioths_dht_timeuntil(bus, dev, GPIO_PIN_LOW,
     &intervals[i]);
  if (err) {
   device_printf(dev, "err(INTERVAL, %d) = %d\n", i, err);
   goto error;
  }
 }

 err = GPIOBUS_PIN_SETFLAGS(bus, dev, 0, GPIO_PIN_OUTPUT);
 if (err != 0) {
  device_printf(dev, "err(FINAL_SETFLAGS, OUT) = %d\n", err);
  goto error;
 }
 DELAY(1);


 avglen = 0;
 for (i = 1; i < GPIOTHS_DHT_CYCLES; i++)
  avglen += calibrations[i];

 avglen = avglen / (GPIOTHS_DHT_CYCLES - 1);


 value = 0;
 offset = 1;
 size = sizeof(value) * 8;
 for (i = offset; i < size + offset; i++) {
  value <<= 1;
  if (intervals[i] > avglen)
   value += 1;
 }


 crc = 0;
 offset = sizeof(value) * 8 + 1;
 size = sizeof(crc) * 8;
 for (i = offset; i < size + offset; i++) {
  crc <<= 1;
  if (intervals[i] > avglen)
   crc += 1;
 }

 calc = 0;
 for (i = 0; i < sizeof(value); i++)
  calc += (value >> (8*i)) & GPIOTHS_DHT_ONEBYTEMASK;
 if (calc != crc) {
  err = -1;
  goto error;
 }

 sc->fails = 0;
 sc->temp = (value >> GPIOTHS_DHT_TEMP_SHIFT) & GPIOTHS_DHT_ONEBYTEMASK;
 sc->hum = (value >> GPIOTHS_DHT_HUM_SHIFT) & GPIOTHS_DHT_ONEBYTEMASK;







 return (0);
error:
 sc->fails++;
 return (err);
}
