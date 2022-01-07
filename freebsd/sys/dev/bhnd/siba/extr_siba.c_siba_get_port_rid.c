
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_devinfo {int dummy; } ;
struct siba_cfg_block {int cb_rid; } ;
struct siba_addrspace {int sa_rid; } ;
typedef scalar_t__ device_t ;
typedef int bhnd_port_type ;


 int BHND_BUS_GET_PORT_RID (scalar_t__,scalar_t__,int ,int ,int ) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_addrspace* siba_find_addrspace (struct siba_devinfo*,int ,int ,int ) ;
 struct siba_cfg_block* siba_find_cfg_block (struct siba_devinfo*,int ,int ,int ) ;

__attribute__((used)) static int
siba_get_port_rid(device_t dev, device_t child, bhnd_port_type port_type,
    u_int port_num, u_int region_num)
{
 struct siba_devinfo *dinfo;
 struct siba_addrspace *addrspace;
 struct siba_cfg_block *cfg;


 if (device_get_parent(child) != dev)
  return (BHND_BUS_GET_PORT_RID(device_get_parent(dev), child,
      port_type, port_num, region_num));

 dinfo = device_get_ivars(child);


 addrspace = siba_find_addrspace(dinfo, port_type, port_num, region_num);
 if (addrspace != ((void*)0))
  return (addrspace->sa_rid);


 cfg = siba_find_cfg_block(dinfo, port_type, port_num, region_num);
 if (cfg != ((void*)0))
  return (cfg->cb_rid);


 return (-1);
}
