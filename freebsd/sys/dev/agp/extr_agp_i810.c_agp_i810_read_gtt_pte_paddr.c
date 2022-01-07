
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* read_gtt_pte ) (int ,int ) ;} ;


 int PAGE_MASK ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static vm_paddr_t
agp_i810_read_gtt_pte_paddr(device_t dev, u_int index)
{
 struct agp_i810_softc *sc;
 u_int32_t pte;
 vm_paddr_t res;

 sc = device_get_softc(dev);
 pte = sc->match->driver->read_gtt_pte(dev, index);
 res = pte & ~PAGE_MASK;
 return (res);
}
