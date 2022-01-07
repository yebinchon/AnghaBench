
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int BCMA_DMP_RC_RESET ;
 int BCMA_DMP_RESETCTRL ;
 int BHND_IOCTL_CLK_EN ;
 int bhnd_read_config (int ,int ,int*,int) ;
 int bhnd_read_ioctl (int ,int*) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static bool
bcma_is_hw_suspended(device_t dev, device_t child)
{
 uint32_t rst;
 uint16_t ioctl;
 int error;


 error = bhnd_read_config(child, BCMA_DMP_RESETCTRL, &rst, 4);
 if (error) {
  device_printf(child, "error reading HW reset state: %d\n",
      error);
  return (1);
 }

 if (rst & BCMA_DMP_RC_RESET)
  return (1);


 error = bhnd_read_ioctl(child, &ioctl);
 if (error) {
  device_printf(child, "error reading HW ioctl register: %d\n",
      error);
  return (1);
 }

 if (!(ioctl & BHND_IOCTL_CLK_EN))
  return (1);

 return (0);
}
