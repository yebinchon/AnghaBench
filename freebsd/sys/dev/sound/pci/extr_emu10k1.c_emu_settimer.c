
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_rchinfo {int spd; int blksz; scalar_t__ buffer; } ;
struct sc_pchinfo {int spd; int blksz; scalar_t__ buffer; } ;
struct sc_info {int nchans; int timerinterval; struct sc_rchinfo* rch; struct sc_pchinfo* pch; } ;


 int EMU_TIMER ;
 int RANGE (int,int,int) ;
 int emu_wr (struct sc_info*,int ,int,int) ;
 int sndbuf_getalign (scalar_t__) ;

__attribute__((used)) static int
emu_settimer(struct sc_info *sc)
{
 struct sc_pchinfo *pch;
 struct sc_rchinfo *rch;
 int i, tmp, rate;

 rate = 0;
 for (i = 0; i < sc->nchans; i++) {
  pch = &sc->pch[i];
  if (pch->buffer) {
   tmp = (pch->spd * sndbuf_getalign(pch->buffer))
       / pch->blksz;
   if (tmp > rate)
    rate = tmp;
  }
 }

 for (i = 0; i < 3; i++) {
  rch = &sc->rch[i];
  if (rch->buffer) {
   tmp = (rch->spd * sndbuf_getalign(rch->buffer))
       / rch->blksz;
   if (tmp > rate)
    rate = tmp;
  }
 }
 RANGE(rate, 48, 9600);
 sc->timerinterval = 48000 / rate;
 emu_wr(sc, EMU_TIMER, sc->timerinterval & 0x03ff, 2);

 return sc->timerinterval;
}
