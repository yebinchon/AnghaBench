
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int adp; } ;
typedef TYPE_1__ vga_softc_t ;
typedef int device_t ;


 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int VGA_MKMINOR (int) ;
 scalar_t__ bootverbose ;
 int bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 int device_get_flags (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int fb_attach (int ,int ,int *) ;
 int isavga_cdevsw ;
 int vga_attach_unit (int,TYPE_1__*,int ) ;
 int vidd_diag (int ,scalar_t__) ;

__attribute__((used)) static int
isavga_attach(device_t dev)
{
 vga_softc_t *sc;
 int unit;
 int rid;
 int error;

 unit = device_get_unit(dev);
 sc = device_get_softc(dev);

 rid = 0;
 bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
      RF_ACTIVE | RF_SHAREABLE);
 rid = 0;
 bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);

 error = vga_attach_unit(unit, sc, device_get_flags(dev));
 if (error)
  return (error);
 if (0 && bootverbose)
  vidd_diag(sc->adp, bootverbose);






 return (0);
}
