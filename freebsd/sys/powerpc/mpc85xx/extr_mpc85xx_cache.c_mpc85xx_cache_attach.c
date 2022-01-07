
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_cache_softc {int * sc_mem; } ;
typedef int device_t ;
typedef int cache_size ;
typedef int cache_line_size ;


 int ENOMEM ;
 int L2CTL_L2E ;
 int L2CTL_L2I ;
 int L2_CTL ;
 int OF_getencprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_read_4 (int *,int ) ;
 int bus_write_4 (int *,int ,int) ;
 struct mpc85xx_cache_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mpc85xx_cache_attach(device_t dev)
{
 struct mpc85xx_cache_softc *sc = device_get_softc(dev);
 int rid;
 int cache_line_size, cache_size;


 rid = 0;
 sc->sc_mem = bus_alloc_resource_any(dev,
       SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->sc_mem == ((void*)0))
  return (ENOMEM);


 __asm __volatile ("mbar; isync" ::: "memory");
 bus_write_4(sc->sc_mem, L2_CTL, L2CTL_L2E | L2CTL_L2I);
 bus_read_4(sc->sc_mem, L2_CTL);
 __asm __volatile ("mbar" ::: "memory");

 cache_line_size = 0;
 cache_size = 0;
 OF_getencprop(ofw_bus_get_node(dev), "cache-size", &cache_size,
     sizeof(cache_size));
 OF_getencprop(ofw_bus_get_node(dev), "cache-line-size",
     &cache_line_size, sizeof(cache_line_size));

 if (cache_line_size != 0 && cache_size != 0)
  device_printf(dev,
      "L2 cache size: %dKB, cache line size: %d bytes\n",
      cache_size / 1024, cache_line_size);

 return (0);
}
