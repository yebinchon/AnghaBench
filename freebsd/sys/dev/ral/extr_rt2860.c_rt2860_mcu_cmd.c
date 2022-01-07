
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rt2860_softc {int dummy; } ;


 int DELAY (int) ;
 int DPRINTF (char*) ;
 int EIO ;
 int ETIMEDOUT ;
 int RAL_BARRIER_WRITE (struct rt2860_softc*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_H2M_BUSY ;
 int RT2860_H2M_MAILBOX ;
 int RT2860_H2M_MAILBOX_CID ;
 int RT2860_H2M_MAILBOX_STATUS ;
 int RT2860_HOST_CMD ;
 int RT2860_TOKEN_NO_INTR ;

int
rt2860_mcu_cmd(struct rt2860_softc *sc, uint8_t cmd, uint16_t arg, int wait)
{
 int slot, ntries;
 uint32_t tmp;
 uint8_t cid;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(RAL_READ(sc, RT2860_H2M_MAILBOX) & RT2860_H2M_BUSY))
   break;
  DELAY(2);
 }
 if (ntries == 100)
  return EIO;

 cid = wait ? cmd : RT2860_TOKEN_NO_INTR;
 RAL_WRITE(sc, RT2860_H2M_MAILBOX, RT2860_H2M_BUSY | cid << 16 | arg);
 RAL_BARRIER_WRITE(sc);
 RAL_WRITE(sc, RT2860_HOST_CMD, cmd);

 if (!wait)
  return 0;

 for (ntries = 0; ntries < 200; ntries++) {
  tmp = RAL_READ(sc, RT2860_H2M_MAILBOX_CID);

  for (slot = 0; slot < 4; slot++, tmp >>= 8)
   if ((tmp & 0xff) == cid)
    break;
  if (slot < 4)
   break;
  DELAY(100);
 }
 if (ntries == 200) {

  RAL_WRITE(sc, RT2860_H2M_MAILBOX_STATUS, 0xffffffff);
  RAL_WRITE(sc, RT2860_H2M_MAILBOX_CID, 0xffffffff);
  return ETIMEDOUT;
 }

 tmp = RAL_READ(sc, RT2860_H2M_MAILBOX_STATUS);
 tmp = (tmp >> (slot * 8)) & 0xff;
 DPRINTF(("MCU command=0x%02x slot=%d status=0x%02x\n",
     cmd, slot, tmp));

 RAL_WRITE(sc, RT2860_H2M_MAILBOX_STATUS, 0xffffffff);
 RAL_WRITE(sc, RT2860_H2M_MAILBOX_CID, 0xffffffff);
 return (tmp == 1) ? 0 : EIO;
}
