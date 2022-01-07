
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct resource* msix_res; } ;
struct sfxge_softc {TYPE_1__ intr; int dev; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int rman_get_rid (struct resource*) ;

__attribute__((used)) static void
sfxge_intr_teardown_msix(struct sfxge_softc *sc)
{
 device_t dev;
 struct resource *resp;
 int rid;

 dev = sc->dev;
 resp = sc->intr.msix_res;

 rid = rman_get_rid(resp);
 bus_release_resource(dev, SYS_RES_MEMORY, rid, resp);
}
