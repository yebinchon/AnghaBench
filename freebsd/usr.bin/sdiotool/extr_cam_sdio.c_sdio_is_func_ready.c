
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cam_device {int dummy; } ;


 int SD_IO_CCCR_FN_READY ;
 int sdio_read_bool_for_func (struct cam_device*,int ,int ,int *) ;

int
sdio_is_func_ready(struct cam_device *dev, uint8_t func_number, uint8_t *is_enab) {
 return sdio_read_bool_for_func(dev, SD_IO_CCCR_FN_READY, func_number, is_enab);
}
