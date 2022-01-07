
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hwch; scalar_t__ stopping; int buffer; scalar_t__ run; int channel; } ;
struct TYPE_3__ {int hwch; scalar_t__ stopping; int buffer; scalar_t__ run; int channel; } ;
struct ess_info {TYPE_2__ rch; TYPE_1__ pch; } ;


 int DSP_DATA_AVAIL ;
 int PCMTRIG_STOP ;
 int chn_intr (int ) ;
 int ess_getmixer (struct ess_info*,int) ;
 int ess_lock (struct ess_info*) ;
 int ess_rd (struct ess_info*,int) ;
 int ess_read (struct ess_info*,int) ;
 int ess_setmixer (struct ess_info*,int,int) ;
 int ess_unlock (struct ess_info*) ;
 int ess_write (struct ess_info*,int,int) ;
 int sndbuf_dma (int ,int ) ;

__attribute__((used)) static void
ess_intr(void *arg)
{
     struct ess_info *sc = (struct ess_info *)arg;
 int src, pirq, rirq;

 ess_lock(sc);
 src = 0;
 if (ess_getmixer(sc, 0x7a) & 0x80)
  src |= 2;
 if (ess_rd(sc, 0x0c) & 0x01)
  src |= 1;

 pirq = (src & sc->pch.hwch)? 1 : 0;
 rirq = (src & sc->rch.hwch)? 1 : 0;

 if (pirq) {
  if (sc->pch.run) {
   ess_unlock(sc);
   chn_intr(sc->pch.channel);
   ess_lock(sc);
  }
  if (sc->pch.stopping) {
   sc->pch.run = 0;
   sndbuf_dma(sc->pch.buffer, PCMTRIG_STOP);
   sc->pch.stopping = 0;
   if (sc->pch.hwch == 1)
    ess_write(sc, 0xb8, ess_read(sc, 0xb8) & ~0x01);
   else
    ess_setmixer(sc, 0x78, ess_getmixer(sc, 0x78) & ~0x03);
  }
 }

 if (rirq) {
  if (sc->rch.run) {
   ess_unlock(sc);
   chn_intr(sc->rch.channel);
   ess_lock(sc);
  }
  if (sc->rch.stopping) {
   sc->rch.run = 0;
   sndbuf_dma(sc->rch.buffer, PCMTRIG_STOP);
   sc->rch.stopping = 0;

   ess_write(sc, 0xb8, ess_read(sc, 0xb8) & ~0x01);
  }
 }

 if (src & 2)
  ess_setmixer(sc, 0x7a, ess_getmixer(sc, 0x7a) & ~0x80);
 if (src & 1)
      ess_rd(sc, DSP_DATA_AVAIL);
 ess_unlock(sc);
}
