
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct write_data {int val; int reg; } ;
struct read_data {scalar_t__ val; int reg; } ;
typedef int device_t ;


 int AD7417_ADC ;
 int AD7417_CONFIG ;
 int AD7417_CONFMASK ;
 int ad7417_read_1 (int ,int,int ,int*) ;
 int ad7417_write_read (int ,int,struct write_data,struct read_data*) ;

__attribute__((used)) static int
ad7417_get_adc(device_t dev, uint32_t addr, unsigned int *value,
        uint8_t chan)
{
 uint8_t tmp;
 int err;
 struct write_data config;
 struct read_data data;

 tmp = chan << 5;
 config.reg = AD7417_CONFIG;
 data.reg = AD7417_ADC;
 data.val = 0;

 err = ad7417_read_1(dev, addr, AD7417_CONFIG, &config.val);

 config.val = (config.val & ~AD7417_CONFMASK) | (tmp & AD7417_CONFMASK);

 err = ad7417_write_read(dev, addr, config, &data);
 if (err < 0)
  return (-1);

 *value = ((uint32_t)data.val) >> 6;

 return (0);
}
