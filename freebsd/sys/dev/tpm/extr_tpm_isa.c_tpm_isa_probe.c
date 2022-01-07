
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_set_desc (int ,char*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int tpm_tis12_probe (int ,int ) ;

__attribute__((used)) static int
tpm_isa_probe(device_t dev)
{
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 struct resource *mem_res;
 int rv, mem_rid;

 mem_rid = 0;
 mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &mem_rid,
     RF_ACTIVE);
 if (mem_res == ((void*)0))
  return (ENXIO);
 iot = rman_get_bustag(mem_res);
 ioh = rman_get_bushandle(mem_res);

 if ((rv = tpm_tis12_probe(iot, ioh)))
  device_set_desc(dev, "Trusted Platform Module");

 bus_release_resource(dev, SYS_RES_MEMORY, mem_rid, mem_res);
 return rv ? 0 : ENXIO;
}
