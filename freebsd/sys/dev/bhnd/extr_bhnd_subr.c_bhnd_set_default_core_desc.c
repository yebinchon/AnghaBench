
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bhnd_get_device_name (int ) ;
 int bhnd_set_custom_core_desc (int ,int ) ;

void
bhnd_set_default_core_desc(device_t dev)
{
 bhnd_set_custom_core_desc(dev, bhnd_get_device_name(dev));
}
