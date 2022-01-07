
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_softc {int flags; } ;
typedef int device_t ;


 int CBB_16BIT_CARD ;
 int cbb_cardbus_deactivate_resource (int ,int ,int,int,struct resource*) ;
 int cbb_pcic_deactivate_resource (int ,int ,int,int,struct resource*) ;
 struct cbb_softc* device_get_softc (int ) ;

int
cbb_deactivate_resource(device_t brdev, device_t child, int type,
    int rid, struct resource *r)
{
 struct cbb_softc *sc = device_get_softc(brdev);

 if (sc->flags & CBB_16BIT_CARD)
  return (cbb_pcic_deactivate_resource(brdev, child, type,
      rid, r));
 else
  return (cbb_cardbus_deactivate_resource(brdev, child, type,
      rid, r));
}
