
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;
typedef int bhnd_size_t ;
typedef int bhnd_port_type ;
typedef int bhnd_addr_t ;


 int BHND_BUS_GET_REGION_ADDR (int ,int ,int ,int ,int ,int *,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_get_region_addr(device_t dev, bhnd_port_type port_type, u_int port,
    u_int region, bhnd_addr_t *region_addr, bhnd_size_t *region_size)
{
 return BHND_BUS_GET_REGION_ADDR(device_get_parent(dev), dev, port_type,
     port, region, region_addr, region_size);
}
