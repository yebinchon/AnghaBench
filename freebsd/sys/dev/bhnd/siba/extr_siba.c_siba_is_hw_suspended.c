
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int BHND_IOCTL_CLK_EN ;
 int SIBA_CFG0_TMSTATELOW ;
 int SIBA_REG_GET (int,int ) ;
 int SIBA_TML_REJ_MASK ;
 int SIBA_TML_RESET ;
 int TML_SICF ;
 int bhnd_read_config (int ,int ,int*,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static bool
siba_is_hw_suspended(device_t dev, device_t child)
{
 uint32_t ts_low;
 uint16_t ioctl;
 int error;


 error = bhnd_read_config(child, SIBA_CFG0_TMSTATELOW, &ts_low, 4);
 if (error) {
  device_printf(child, "error reading HW reset state: %d\n",
      error);
  return (1);
 }


 if (ts_low & SIBA_TML_RESET)
  return (1);


 if (ts_low & SIBA_TML_REJ_MASK)
  return (1);


 ioctl = SIBA_REG_GET(ts_low, TML_SICF);
 if (!(ioctl & BHND_IOCTL_CLK_EN))
  return (1);

 return (0);
}
