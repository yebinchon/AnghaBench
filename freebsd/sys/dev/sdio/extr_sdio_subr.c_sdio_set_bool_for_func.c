
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int device_t ;


 int SDIO_READ_DIRECT (int ,int ,int ,int*) ;
 int SDIO_WRITE_DIRECT (int ,int ,int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
sdio_set_bool_for_func(device_t dev, uint32_t addr, uint8_t fn, bool enable)
{
 device_t pdev;
 int error;
 uint8_t val;
 bool enabled;

 pdev = device_get_parent(dev);
 error = SDIO_READ_DIRECT(pdev, 0, addr, &val);
 if (error != 0)
  return (error);

 enabled = (val & (1 << fn)) ? 1 : 0;
 if (enabled == enable)
  return (0);

 if (enable)
  val |= (1 << fn);
 else
  val &= ~(1 << fn);
 error = SDIO_WRITE_DIRECT(pdev, 0, addr, val);
 return (error);
}
