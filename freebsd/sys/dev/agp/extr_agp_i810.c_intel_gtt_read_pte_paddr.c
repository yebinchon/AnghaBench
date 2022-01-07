
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int u_int ;
struct agp_i810_softc {TYPE_2__* match; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* read_gtt_pte_paddr ) (int ,int ) ;} ;


 struct agp_i810_softc* device_get_softc (int ) ;
 int intel_agp ;
 int stub1 (int ,int ) ;

vm_paddr_t
intel_gtt_read_pte_paddr(u_int entry)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(intel_agp);
 return (sc->match->driver->read_gtt_pte_paddr(intel_agp, entry));
}
