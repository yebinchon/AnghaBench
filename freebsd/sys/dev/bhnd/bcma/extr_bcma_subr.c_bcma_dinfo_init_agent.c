
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_devinfo {int * res_agent; int rid_agent; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;


 int BCMA_AGENT_RID (struct bcma_devinfo*) ;
 int BCMA_DINFO_COREIDX (struct bcma_devinfo*) ;
 int * BHND_BUS_ALLOC_RESOURCE (int ,int ,int ,int *,scalar_t__,scalar_t__,scalar_t__,int) ;
 int BHND_PORT_AGENT ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int bhnd_get_port_rid (int ,int ,int ,int ) ;
 int bhnd_get_region_addr (int ,int ,int ,int ,scalar_t__*,scalar_t__*) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static int
bcma_dinfo_init_agent(device_t bus, device_t child, struct bcma_devinfo *dinfo)
{
 bhnd_addr_t addr;
 bhnd_size_t size;
 rman_res_t r_start, r_count, r_end;
 int error;

 KASSERT(dinfo->res_agent == ((void*)0), ("double allocation of agent"));



 if (bhnd_get_port_rid(child, BHND_PORT_AGENT, 0, 0) == -1)
  return (0);


 error = bhnd_get_region_addr(child, BHND_PORT_AGENT, 0, 0,
     &addr, &size);
 if (error) {
  device_printf(bus, "failed fetching agent register block "
      "address for core %u\n", BCMA_DINFO_COREIDX(dinfo));
  return (error);
 }


 r_start = addr;
 r_count = size;
 r_end = r_start + r_count - 1;

 dinfo->rid_agent = BCMA_AGENT_RID(dinfo);
 dinfo->res_agent = BHND_BUS_ALLOC_RESOURCE(bus, bus, SYS_RES_MEMORY,
     &dinfo->rid_agent, r_start, r_end, r_count, RF_ACTIVE|RF_SHAREABLE);
 if (dinfo->res_agent == ((void*)0)) {
  device_printf(bus, "failed allocating agent register block for "
      "core %u\n", BCMA_DINFO_COREIDX(dinfo));
  return (ENXIO);
 }

 return (0);
}
