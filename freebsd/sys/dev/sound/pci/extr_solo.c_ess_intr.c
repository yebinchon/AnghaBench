
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hwch; int channel; scalar_t__ stopping; } ;
struct TYPE_3__ {int hwch; int channel; scalar_t__ stopping; } ;
struct ess_info {scalar_t__ simplex_dir; TYPE_2__ rch; TYPE_1__ pch; scalar_t__ duplex; } ;


 int DEB (int ) ;
 int DSP_DATA_AVAIL ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;
 int chn_intr (int ) ;
 int ess_dmatrigger (struct ess_info*,int,int ) ;
 int ess_getmixer (struct ess_info*,int) ;
 int ess_lock (struct ess_info*) ;
 int ess_rd (struct ess_info*,int) ;
 int ess_read (struct ess_info*,int) ;
 int ess_setmixer (struct ess_info*,int,int) ;
 int ess_unlock (struct ess_info*) ;
 int ess_write (struct ess_info*,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ess_intr(void *arg)
{
     struct ess_info *sc = (struct ess_info *)arg;
 int src, pirq = 0, rirq = 0;

 ess_lock(sc);
 src = 0;
 if (ess_getmixer(sc, 0x7a) & 0x80)
  src |= 2;
 if (ess_rd(sc, 0x0c) & 0x01)
  src |= 1;

 if (src == 0) {
  ess_unlock(sc);
  return;
 }

 if (sc->duplex) {
  pirq = (src & sc->pch.hwch)? 1 : 0;
  rirq = (src & sc->rch.hwch)? 1 : 0;
 } else {
  if (sc->simplex_dir == PCMDIR_PLAY)
   pirq = 1;
  if (sc->simplex_dir == PCMDIR_REC)
   rirq = 1;
  if (!pirq && !rirq)
   printf("solo: IRQ neither playback nor rec!\n");
 }

 DEB(printf("ess_intr: pirq:%d rirq:%d\n",pirq,rirq));

 if (pirq) {
  if (sc->pch.stopping) {
   ess_dmatrigger(sc, sc->pch.hwch, 0);
   sc->pch.stopping = 0;
   if (sc->pch.hwch == 1)
    ess_write(sc, 0xb8, ess_read(sc, 0xb8) & ~0x01);
   else
    ess_setmixer(sc, 0x78, ess_getmixer(sc, 0x78) & ~0x03);
  }
  ess_unlock(sc);
  chn_intr(sc->pch.channel);
  ess_lock(sc);
 }

 if (rirq) {
  if (sc->rch.stopping) {
   ess_dmatrigger(sc, sc->rch.hwch, 0);
   sc->rch.stopping = 0;

   ess_write(sc, 0xb8, ess_read(sc, 0xb8) & ~0x01);
  }
  ess_unlock(sc);
  chn_intr(sc->rch.channel);
  ess_lock(sc);
 }

 if (src & 2)
  ess_setmixer(sc, 0x7a, ess_getmixer(sc, 0x7a) & ~0x80);
 if (src & 1)
      ess_rd(sc, DSP_DATA_AVAIL);

 ess_unlock(sc);
}
