
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_mfw_flags; scalar_t__ bge_asicrev; int bge_func_addr; int bge_dev; } ;


 int APE_READ_4 (struct bge_softc*,int) ;
 int APE_WRITE_4 (struct bge_softc*,int,int) ;

 int BGE_APE_LOCK_GRANT ;






 int BGE_APE_LOCK_REQ ;
 int BGE_APE_LOCK_REQ_DRIVER0 ;
 int BGE_APE_PER_LOCK_GRANT ;
 int BGE_APE_PER_LOCK_REQ ;
 scalar_t__ BGE_ASICREV_BCM5761 ;
 int BGE_MFW_ON_APE ;
 int DELAY (int) ;
 int EBUSY ;
 int EINVAL ;
 int device_printf (int ,char*,int,int,int,int,int) ;

__attribute__((used)) static int
bge_ape_lock(struct bge_softc *sc, int locknum)
{
 uint32_t bit, gnt, req, status;
 int i, off;

 if ((sc->bge_mfw_flags & BGE_MFW_ON_APE) == 0)
  return (0);


 if (sc->bge_asicrev == BGE_ASICREV_BCM5761) {
  req = BGE_APE_LOCK_REQ;
  gnt = BGE_APE_LOCK_GRANT;
 } else {
  req = BGE_APE_PER_LOCK_REQ;
  gnt = BGE_APE_PER_LOCK_GRANT;
 }

 off = 4 * locknum;

 switch (locknum) {
 case 134:

  if (sc->bge_asicrev == BGE_ASICREV_BCM5761)
   return (0);
  if (sc->bge_func_addr == 0)
   bit = BGE_APE_LOCK_REQ_DRIVER0;
  else
   bit = (1 << sc->bge_func_addr);
  break;
 case 133:

  if (sc->bge_func_addr == 0)
   bit = BGE_APE_LOCK_REQ_DRIVER0;
  else
   bit = (1 << sc->bge_func_addr);
  break;
 case 132:

  if (sc->bge_func_addr == 0)
   bit = BGE_APE_LOCK_REQ_DRIVER0;
  else
   bit = (1 << sc->bge_func_addr);
  break;
 case 131:
 case 130:
 case 129:
 case 128:

  bit = BGE_APE_LOCK_REQ_DRIVER0;
  break;
 default:
  return (EINVAL);
 }


 APE_WRITE_4(sc, req + off, bit);


 for (i = 0; i < 20000; i++) {
  status = APE_READ_4(sc, gnt + off);
  if (status == bit)
   break;
  DELAY(50);
 }


 if (status != bit) {
  device_printf(sc->bge_dev, "APE lock %d request failed! "
      "request = 0x%04x[0x%04x], status = 0x%04x[0x%04x]\n",
      locknum, req + off, bit & 0xFFFF, gnt + off,
      status & 0xFFFF);

  APE_WRITE_4(sc, gnt + off, bit);
  return (EBUSY);
 }

 return (0);
}
