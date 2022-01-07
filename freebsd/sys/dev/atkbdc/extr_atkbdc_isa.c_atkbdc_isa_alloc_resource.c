
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;
struct TYPE_2__ {struct resource* irq; } ;
typedef TYPE_1__ atkbdc_softc_t ;


 int KBDC_RID_KBD ;
 int SYS_RES_IRQ ;
 struct resource* bus_generic_rl_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;
 scalar_t__ device_get_softc (int ) ;

struct resource *
atkbdc_isa_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 atkbdc_softc_t *sc;

 sc = *(atkbdc_softc_t **)device_get_softc(dev);
 if (type == SYS_RES_IRQ && *rid == KBDC_RID_KBD && sc->irq != ((void*)0))
  return (sc->irq);
 return (bus_generic_rl_alloc_resource(dev, child, type, rid, start,
     end, count, flags));
}
