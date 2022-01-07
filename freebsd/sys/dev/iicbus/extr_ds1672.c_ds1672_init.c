
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int DS1672_CTRL ;
 int DS1672_CTRL_EOSC ;
 int device_printf (int ,char*) ;
 int ds1672_read (int ,int ,int*,int) ;
 int ds1672_write (int ,int ,int*,int) ;

__attribute__((used)) static int
ds1672_init(device_t dev)
{
 uint8_t ctrl;
 int error;

 error = ds1672_read(dev, DS1672_CTRL, &ctrl, 1);
 if (error)
  return (error);




 if (ctrl & DS1672_CTRL_EOSC) {
  device_printf(dev, "RTC oscillator was stopped. Check system"
      " time and RTC battery.\n");
  ctrl &= ~DS1672_CTRL_EOSC;
  error = ds1672_write(dev, DS1672_CTRL, &ctrl, 1);
 }
 return (error);
}
