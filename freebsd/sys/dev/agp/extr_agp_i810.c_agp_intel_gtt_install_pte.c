
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int u_int ;
struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* install_gtt_pte ) (int ,int ,int ,int ) ;} ;


 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
agp_intel_gtt_install_pte(device_t dev, u_int index, vm_paddr_t addr,
    u_int flags)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);
 sc->match->driver->install_gtt_pte(dev, index, addr, flags);
}
