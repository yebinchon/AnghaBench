
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int HDAC_CODEC_COMMAND (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static uint32_t
hdacc_codec_command(device_t dev, device_t child, uint32_t verb)
{

 return (HDAC_CODEC_COMMAND(device_get_parent(dev), dev, verb));
}
