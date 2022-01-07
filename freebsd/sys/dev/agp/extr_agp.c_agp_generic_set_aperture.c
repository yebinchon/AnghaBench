
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int device_t ;


 scalar_t__ AGP_GET_APERTURE (int ) ;
 int EINVAL ;

int
agp_generic_set_aperture(device_t dev, u_int32_t aperture)
{
 u_int32_t current_aperture;

 current_aperture = AGP_GET_APERTURE(dev);
 if (current_aperture != aperture)
  return EINVAL;
 else
  return 0;
}
