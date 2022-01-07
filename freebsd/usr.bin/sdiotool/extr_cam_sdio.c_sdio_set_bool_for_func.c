
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cam_device {int dummy; } ;


 int sdio_rw_direct (struct cam_device*,int ,int ,int,int*,int*) ;

int
sdio_set_bool_for_func(struct cam_device *dev, uint32_t addr, uint8_t func_number, int enable) {
 uint8_t resp;
 int ret;
 uint8_t is_enabled;

 ret = sdio_rw_direct(dev, 0, addr, 0, ((void*)0), &resp);
 if (ret != 0)
  return ret;

 is_enabled = resp & (1 << func_number);
 if ((is_enabled !=0 && enable == 1) || (is_enabled == 0 && enable == 0))
  return 0;

 if (enable)
  resp |= 1 << func_number;
 else
  resp &= ~ (1 << func_number);

 ret = sdio_rw_direct(dev, 0, addr, 1, &resp, &resp);

 return ret;
}
