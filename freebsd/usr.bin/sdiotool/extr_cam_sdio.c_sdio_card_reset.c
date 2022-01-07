
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cam_device {int dummy; } ;


 int CCCR_CTL_RES ;
 int SD_IO_CCCR_CTL ;
 int errx (int,char*) ;
 int sdio_rw_direct (struct cam_device*,int ,int ,int,int *,int *) ;

void sdio_card_reset(struct cam_device *dev) {
 int ret;
 uint8_t ctl_val;
 ret = sdio_rw_direct(dev, 0, SD_IO_CCCR_CTL, 0, ((void*)0), &ctl_val);
 if (ret < 0)
  errx(1, "Error getting CCCR_CTL value");
 ctl_val |= CCCR_CTL_RES;
 ret = sdio_rw_direct(dev, 0, SD_IO_CCCR_CTL, 1, &ctl_val, &ctl_val);
 if (ret < 0)
  errx(1, "Error setting CCCR_CTL value");
}
