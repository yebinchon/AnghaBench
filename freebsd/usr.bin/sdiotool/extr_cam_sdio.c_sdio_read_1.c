
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cam_device {int dummy; } ;


 int sdio_rw_direct (struct cam_device*,int ,int ,int ,int *,int *) ;

uint8_t
sdio_read_1(struct cam_device *dev, uint8_t func_number, uint32_t addr, int *ret) {
 uint8_t val;
 *ret = sdio_rw_direct(dev, func_number, addr, 0, ((void*)0), &val);
 return val;
}
