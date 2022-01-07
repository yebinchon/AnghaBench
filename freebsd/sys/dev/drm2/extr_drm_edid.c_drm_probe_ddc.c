
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ drm_do_probe_ddc_edid (int ,unsigned char*,int ,int) ;

bool
drm_probe_ddc(device_t adapter)
{
 unsigned char out;

 return (drm_do_probe_ddc_edid(adapter, &out, 0, 1) == 0);
}
