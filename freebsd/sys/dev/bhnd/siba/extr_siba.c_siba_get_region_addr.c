
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_devinfo {int dummy; } ;
struct siba_cfg_block {scalar_t__ cb_size; int cb_base; } ;
struct siba_addrspace {scalar_t__ sa_bus_reserved; scalar_t__ sa_size; int sa_base; } ;
typedef scalar_t__ device_t ;
typedef scalar_t__ bhnd_size_t ;
typedef int bhnd_port_type ;
typedef int bhnd_addr_t ;


 int BHND_BUS_GET_REGION_ADDR (scalar_t__,scalar_t__,int ,int ,int ,int *,scalar_t__*) ;
 int ENOENT ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_addrspace* siba_find_addrspace (struct siba_devinfo*,int ,int ,int ) ;
 struct siba_cfg_block* siba_find_cfg_block (struct siba_devinfo*,int ,int ,int ) ;

__attribute__((used)) static int
siba_get_region_addr(device_t dev, device_t child, bhnd_port_type port_type,
    u_int port_num, u_int region_num, bhnd_addr_t *addr, bhnd_size_t *size)
{
 struct siba_devinfo *dinfo;
 struct siba_addrspace *addrspace;
 struct siba_cfg_block *cfg;


 if (device_get_parent(child) != dev) {
  return (BHND_BUS_GET_REGION_ADDR(device_get_parent(dev), child,
      port_type, port_num, region_num, addr, size));
 }

 dinfo = device_get_ivars(child);


 addrspace = siba_find_addrspace(dinfo, port_type, port_num, region_num);
 if (addrspace != ((void*)0)) {
  *addr = addrspace->sa_base;
  *size = addrspace->sa_size - addrspace->sa_bus_reserved;
  return (0);
 }


 cfg = siba_find_cfg_block(dinfo, port_type, port_num, region_num);
 if (cfg != ((void*)0)) {
  *addr = cfg->cb_base;
  *size = cfg->cb_size;
  return (0);
 }


 return (ENOENT);
}
