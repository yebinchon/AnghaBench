
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ ops_pcib_sc; } ;
struct apb_softc {TYPE_2__ sc_bsc; int sc_memmap; int sc_iomap; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int APB_IO_SCALE ;
 int APB_MEM_SCALE ;
 scalar_t__ RMAN_IS_DEFAULT_RANGE (int ,int ) ;


 int apb_checkrange (int ,int ,int ,int ) ;
 int bootverbose ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;
 int device_get_nameunit (int ) ;
 struct apb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ,...) ;

__attribute__((used)) static struct resource *
apb_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct apb_softc *sc;

 sc = device_get_softc(dev);






 if (RMAN_IS_DEFAULT_RANGE(start, end)) {
  device_printf(dev, "can't decode default resource id %d for "
      "%s, bypassing\n", *rid, device_get_nameunit(child));
  goto passup;
 }






 switch (type) {
 case 129:
  if (!apb_checkrange(sc->sc_iomap, APB_IO_SCALE, start, end)) {
   device_printf(dev, "device %s requested unsupported "
       "I/O range 0x%jx-0x%jx\n",
       device_get_nameunit(child), start, end);
   return (((void*)0));
  }
  if (bootverbose)
   device_printf(sc->sc_bsc.ops_pcib_sc.dev, "device "
       "%s requested decoded I/O range 0x%jx-0x%jx\n",
       device_get_nameunit(child), start, end);
  break;
 case 128:
  if (!apb_checkrange(sc->sc_memmap, APB_MEM_SCALE, start,
      end)) {
   device_printf(dev, "device %s requested unsupported "
       "memory range 0x%jx-0x%jx\n",
       device_get_nameunit(child), start, end);
   return (((void*)0));
  }
  if (bootverbose)
   device_printf(sc->sc_bsc.ops_pcib_sc.dev, "device "
       "%s requested decoded memory range 0x%jx-0x%jx\n",
       device_get_nameunit(child), start, end);
  break;
 }

 passup:



 return (bus_generic_alloc_resource(dev, child, type, rid, start, end,
     count, flags));
}
