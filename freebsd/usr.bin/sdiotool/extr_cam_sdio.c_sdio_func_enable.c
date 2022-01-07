
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cam_device {int dummy; } ;


 int SD_IO_CCCR_FN_ENABLE ;
 int sdio_set_bool_for_func (struct cam_device*,int ,int ,int) ;

int
sdio_func_enable(struct cam_device *dev, uint8_t func_number, int enable) {
 return sdio_set_bool_for_func(dev, SD_IO_CCCR_FN_ENABLE, func_number, enable);
}
