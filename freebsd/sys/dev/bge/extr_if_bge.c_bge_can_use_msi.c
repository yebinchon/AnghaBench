
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {scalar_t__ bge_msi; int bge_asicrev; int bge_chiprev; } ;






 int BGE_CHIPREV_5750_AX ;
 int BGE_CHIPREV_5750_BX ;
 int BGE_CHIPREV_5784_AX ;
 int BGE_IS_575X_PLUS (struct bge_softc*) ;
 int bge_has_multiple_ports (struct bge_softc*) ;

__attribute__((used)) static int
bge_can_use_msi(struct bge_softc *sc)
{
 int can_use_msi = 0;

 if (sc->bge_msi == 0)
  return (0);





 switch (sc->bge_asicrev) {
 case 130:
 case 131:




  if (bge_has_multiple_ports(sc))
   can_use_msi = 1;
  break;
 case 129:
  if (sc->bge_chiprev != BGE_CHIPREV_5750_AX &&
      sc->bge_chiprev != BGE_CHIPREV_5750_BX)
   can_use_msi = 1;
  break;
 case 128:




  if (sc->bge_chiprev == BGE_CHIPREV_5784_AX)
   break;

 default:
  if (BGE_IS_575X_PLUS(sc))
   can_use_msi = 1;
 }
 return (can_use_msi);
}
