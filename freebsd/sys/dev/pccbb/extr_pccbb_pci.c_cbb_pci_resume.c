
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cbb_softc {int intrhand; int (* chipinit ) (struct cbb_softc*) ;} ;
typedef int device_t ;


 int CBB_SOCKET_EVENT ;
 int CBB_SOCKET_MASK ;
 int CBB_SOCKET_MASK_CD ;
 int bus_generic_resume (int ) ;
 int cbb_get (struct cbb_softc*,int ) ;
 int cbb_set (struct cbb_softc*,int ,int ) ;
 int cbb_setb (struct cbb_softc*,int ,int ) ;
 scalar_t__ device_get_softc (int ) ;
 int stub1 (struct cbb_softc*) ;
 int wakeup (int *) ;

__attribute__((used)) static int
cbb_pci_resume(device_t brdev)
{
 int error = 0;
 struct cbb_softc *sc = (struct cbb_softc *)device_get_softc(brdev);
 uint32_t tmp;
 sc->chipinit(sc);


 tmp = cbb_get(sc, CBB_SOCKET_EVENT);
 cbb_set(sc, CBB_SOCKET_EVENT, tmp);


 cbb_setb(sc, CBB_SOCKET_MASK, CBB_SOCKET_MASK_CD);


 wakeup(&sc->intrhand);

 error = bus_generic_resume(brdev);

 return (error);
}
