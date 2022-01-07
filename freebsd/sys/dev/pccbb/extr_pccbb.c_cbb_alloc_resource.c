
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct cbb_softc {int flags; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int CBB_16BIT_CARD ;
 struct resource* cbb_cardbus_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;
 struct resource* cbb_pcic_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;
 struct cbb_softc* device_get_softc (int ) ;

struct resource *
cbb_alloc_resource(device_t brdev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct cbb_softc *sc = device_get_softc(brdev);

 if (sc->flags & CBB_16BIT_CARD)
  return (cbb_pcic_alloc_resource(brdev, child, type, rid,
      start, end, count, flags));
 else
  return (cbb_cardbus_alloc_resource(brdev, child, type, rid,
      start, end, count, flags));
}
