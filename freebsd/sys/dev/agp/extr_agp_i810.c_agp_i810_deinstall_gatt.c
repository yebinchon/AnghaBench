
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct agp_i810_softc {TYPE_1__* gatt; int * sc_res; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ag_virtual; } ;


 int AGP_I810_PGTBL_CTL ;
 int bus_write_4 (int ,int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int kmem_free (int ,int) ;

__attribute__((used)) static void
agp_i810_deinstall_gatt(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 bus_write_4(sc->sc_res[0], AGP_I810_PGTBL_CTL, 0);
 kmem_free((vm_offset_t)sc->gatt->ag_virtual, 64 * 1024);
}
