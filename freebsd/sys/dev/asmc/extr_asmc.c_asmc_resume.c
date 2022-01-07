
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int ASMC_KEY_LIGHTVALUE ;
 int asmc_key_write (int ,int ,int*,int) ;
 int light_control ;

__attribute__((used)) static int
asmc_resume(device_t dev)
{
    uint8_t buf[2];
    buf[0] = light_control;
    buf[1] = 0x00;
    asmc_key_write(dev, ASMC_KEY_LIGHTVALUE, buf, sizeof buf);
    return (0);
}
