
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_devinfo {int core_id; } ;
typedef scalar_t__ device_t ;
typedef int bhnd_port_type ;


 int BHND_BUS_GET_PORT_COUNT (scalar_t__,scalar_t__,int ) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int siba_port_count (int *,int ) ;

__attribute__((used)) static u_int
siba_get_port_count(device_t dev, device_t child, bhnd_port_type type)
{
 struct siba_devinfo *dinfo;


 if (device_get_parent(child) != dev)
  return (BHND_BUS_GET_PORT_COUNT(device_get_parent(dev), child,
      type));

 dinfo = device_get_ivars(child);
 return (siba_port_count(&dinfo->core_id, type));
}
