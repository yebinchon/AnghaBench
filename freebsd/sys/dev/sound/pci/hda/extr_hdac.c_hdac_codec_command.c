
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 scalar_t__ device_get_ivars (int ) ;
 int device_get_softc (int ) ;
 int hdac_send_command (int ,intptr_t,int ) ;

__attribute__((used)) static uint32_t
hdac_codec_command(device_t dev, device_t child, uint32_t verb)
{

 return (hdac_send_command(device_get_softc(dev),
     (intptr_t)device_get_ivars(child), verb));
}
