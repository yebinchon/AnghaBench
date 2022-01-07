
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct time_regs {scalar_t__ sec; } ;
struct nxprtc_softc {scalar_t__ use_timer; int secaddr; int dev; int tmcaddr; } ;


 scalar_t__ TMR_TICKS_HALFSEC ;
 scalar_t__ TMR_TICKS_SEC ;
 int WAITFLAGS ;
 int nxprtc_readfrom (int ,int ,struct time_regs*,int,int ) ;
 int read_reg (struct nxprtc_softc*,int ,scalar_t__*) ;

__attribute__((used)) static int
read_timeregs(struct nxprtc_softc *sc, struct time_regs *tregs, uint8_t *tmr)
{
 int err;
 uint8_t sec, tmr1, tmr2;







 do {
  if (sc->use_timer) {
   if ((err = read_reg(sc, sc->secaddr, &sec)) != 0)
    break;
   if ((err = read_reg(sc, sc->tmcaddr, &tmr1)) != 0)
    break;
   if ((err = read_reg(sc, sc->tmcaddr, &tmr2)) != 0)
    break;
   if (tmr1 != tmr2)
    continue;
  }
  if ((err = nxprtc_readfrom(sc->dev, sc->secaddr, tregs,
      sizeof(*tregs), WAITFLAGS)) != 0)
   break;
 } while (sc->use_timer && tregs->sec != sec);
 if (!sc->use_timer || tmr1 > TMR_TICKS_SEC)
  tmr1 = 0;






 *tmr = (TMR_TICKS_SEC - tmr1 + TMR_TICKS_HALFSEC) % TMR_TICKS_SEC;

 return (err);
}
