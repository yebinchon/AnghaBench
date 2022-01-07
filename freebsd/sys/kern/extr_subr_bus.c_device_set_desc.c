
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int FALSE ;
 int device_set_desc_internal (int ,char const*,int ) ;

void
device_set_desc(device_t dev, const char* desc)
{
 device_set_desc_internal(dev, desc, FALSE);
}
