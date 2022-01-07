
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
typedef int uint32_t ;
struct cam_device {int dummy; } ;
typedef int caddr_t ;


 int sdio_rw_extended (struct cam_device*,int ,int ,int,int ,int,int,int ) ;

int
sdio_write_4(struct cam_device *dev, uint8_t func_number, uint32_t addr, uint32_t val) {
 return sdio_rw_extended(dev, func_number, addr,
                   1,
               (caddr_t) &val,
                  sizeof(val),
                       1,
                    0
  );
}
