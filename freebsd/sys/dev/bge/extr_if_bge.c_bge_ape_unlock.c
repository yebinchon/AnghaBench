
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_mfw_flags; scalar_t__ bge_asicrev; int bge_func_addr; } ;


 int APE_WRITE_4 (struct bge_softc*,int,int) ;

 int BGE_APE_LOCK_GRANT ;
 int BGE_APE_LOCK_GRANT_DRIVER0 ;






 int BGE_APE_PER_LOCK_GRANT ;
 scalar_t__ BGE_ASICREV_BCM5761 ;
 int BGE_MFW_ON_APE ;

__attribute__((used)) static void
bge_ape_unlock(struct bge_softc *sc, int locknum)
{
 uint32_t bit, gnt;
 int off;

 if ((sc->bge_mfw_flags & BGE_MFW_ON_APE) == 0)
  return;

 if (sc->bge_asicrev == BGE_ASICREV_BCM5761)
  gnt = BGE_APE_LOCK_GRANT;
 else
  gnt = BGE_APE_PER_LOCK_GRANT;

 off = 4 * locknum;

 switch (locknum) {
 case 134:
  if (sc->bge_asicrev == BGE_ASICREV_BCM5761)
   return;
  if (sc->bge_func_addr == 0)
   bit = BGE_APE_LOCK_GRANT_DRIVER0;
  else
   bit = (1 << sc->bge_func_addr);
  break;
 case 133:
  if (sc->bge_func_addr == 0)
   bit = BGE_APE_LOCK_GRANT_DRIVER0;
  else
   bit = (1 << sc->bge_func_addr);
  break;
 case 132:
  if (sc->bge_func_addr == 0)
   bit = BGE_APE_LOCK_GRANT_DRIVER0;
  else
   bit = (1 << sc->bge_func_addr);
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  bit = BGE_APE_LOCK_GRANT_DRIVER0;
  break;
 default:
  return;
 }

 APE_WRITE_4(sc, gnt + off, bit);
}
