
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;
typedef int bhnd_port_type ;


 int BHND_BUS_IS_REGION_VALID (int ,int ,int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline bool
bhnd_is_region_valid(device_t dev, bhnd_port_type type, u_int port,
    u_int region)
{
 return (BHND_BUS_IS_REGION_VALID(device_get_parent(dev), dev, type,
     port, region));
}
