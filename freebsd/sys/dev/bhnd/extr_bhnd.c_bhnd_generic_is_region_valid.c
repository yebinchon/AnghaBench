
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int device_t ;
typedef int bhnd_port_type ;


 scalar_t__ bhnd_get_port_count (int ,int ) ;
 scalar_t__ bhnd_get_region_count (int ,int ,scalar_t__) ;

__attribute__((used)) static bool
bhnd_generic_is_region_valid(device_t dev, device_t child,
    bhnd_port_type type, u_int port, u_int region)
{
 if (port >= bhnd_get_port_count(child, type))
  return (0);

 if (region >= bhnd_get_region_count(child, type, port))
  return (0);

 return (1);
}
