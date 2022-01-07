
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ad7417_softc {int init_done; } ;
typedef int device_t ;


 int AD7417_CONFIG ;
 int AD7417_CONFIG2 ;
 int ad7417_read_1 (int ,int ,int ,int*) ;
 int ad7417_write (int ,int ,int ,int*,int) ;
 int adc741x_config ;
 struct ad7417_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ad7417_init_adc(device_t dev, uint32_t addr)
{
 uint8_t buf;
 int err;
 struct ad7417_softc *sc;

 sc = device_get_softc(dev);

 adc741x_config = 0;

 buf = 0;

 err = ad7417_write(dev, addr, AD7417_CONFIG2, &buf, 1);


 buf = 0;
 err = ad7417_write(dev, addr, AD7417_CONFIG, &buf, 1);
 err = ad7417_read_1(dev, addr, AD7417_CONFIG, &buf);
 adc741x_config = (uint8_t)buf;


 adc741x_config &= 0xfe;
 buf = adc741x_config;
 err = ad7417_write(dev, addr, AD7417_CONFIG, &buf, 1);
 if (err < 0)
  return (-1);

 sc->init_done = 1;

 return (0);

}
