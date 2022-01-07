
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct sc_info {int lock; TYPE_2__ rch; TYPE_1__ pch; } ;


 int ALS_CR1E_ACK_PORT ;
 int ALS_ESP_RD_STATUS16 ;
 int ALS_ESP_RD_STATUS8 ;
 int ALS_IRQ_CR1E ;
 int ALS_IRQ_MPUIN ;
 int ALS_IRQ_STATUS16 ;
 int ALS_IRQ_STATUS8 ;
 int ALS_MIDI_DATA ;
 int IRQ_STAT ;
 int als_ack_read (struct sc_info*,int ) ;
 int als_intr_rd (struct sc_info*) ;
 int als_intr_wr (struct sc_info*,int) ;
 int als_mix_rd (struct sc_info*,int ) ;
 int chn_intr (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static void
als_intr(void *p)
{
 struct sc_info *sc = (struct sc_info *)p;
 u_int8_t intr, sb_status;

 snd_mtxlock(sc->lock);
 intr = als_intr_rd(sc);

 if (intr & 0x80) {
  snd_mtxunlock(sc->lock);
  chn_intr(sc->pch.channel);
  snd_mtxlock(sc->lock);
 }

 if (intr & 0x40) {
  snd_mtxunlock(sc->lock);
  chn_intr(sc->rch.channel);
  snd_mtxlock(sc->lock);
 }


 als_intr_wr(sc, intr);


 sb_status = als_mix_rd(sc, IRQ_STAT);

 if (sb_status & ALS_IRQ_STATUS8)
  als_ack_read(sc, ALS_ESP_RD_STATUS8);
 if (sb_status & ALS_IRQ_STATUS16)
  als_ack_read(sc, ALS_ESP_RD_STATUS16);
 if (sb_status & ALS_IRQ_MPUIN)
  als_ack_read(sc, ALS_MIDI_DATA);
 if (sb_status & ALS_IRQ_CR1E)
  als_ack_read(sc, ALS_CR1E_ACK_PORT);

 snd_mtxunlock(sc->lock);
 return;
}
