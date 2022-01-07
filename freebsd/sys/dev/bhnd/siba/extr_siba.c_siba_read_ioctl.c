
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int SIBA_CFG0_TMSTATELOW ;
 int SIBA_REG_GET (int ,int ) ;
 int TML_SICF ;
 int bhnd_read_config (int ,int ,int *,int) ;

__attribute__((used)) static int
siba_read_ioctl(device_t dev, device_t child, uint16_t *ioctl)
{
 uint32_t ts_low;
 int error;

 if ((error = bhnd_read_config(child, SIBA_CFG0_TMSTATELOW, &ts_low, 4)))
  return (error);

 *ioctl = (SIBA_REG_GET(ts_low, TML_SICF));
 return (0);
}
