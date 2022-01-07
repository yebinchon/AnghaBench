
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int agp_generic_set_aperture (int ,int ) ;

__attribute__((used)) static int
agp_i915_set_aperture(device_t dev, u_int32_t aperture)
{

 return (agp_generic_set_aperture(dev, aperture));
}
