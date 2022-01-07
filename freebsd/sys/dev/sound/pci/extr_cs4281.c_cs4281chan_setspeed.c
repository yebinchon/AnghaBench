
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {scalar_t__ dma_chan; int spd; struct sc_info* parent; } ;
typedef int kobj_t ;


 int CS4281PCI_ADCSR ;
 int CS4281PCI_DACSR ;
 scalar_t__ CS4281_DMA_PLAY ;
 int adcdac_go (struct sc_chinfo*,int ) ;
 int cs4281_rate_to_rv (int ) ;
 int cs4281_rv_to_rate (int ) ;
 int cs4281_wr (struct sc_info*,int ,int ) ;

__attribute__((used)) static u_int32_t
cs4281chan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
    struct sc_chinfo *ch = data;
    struct sc_info *sc = ch->parent;
    u_int32_t go, v, r;

    go = adcdac_go(ch, 0);
    r = (ch->dma_chan == CS4281_DMA_PLAY) ? CS4281PCI_DACSR : CS4281PCI_ADCSR;
    v = cs4281_rate_to_rv(speed);
    cs4281_wr(sc, r, v);
    adcdac_go(ch, go);

    ch->spd = cs4281_rv_to_rate(v);
    return ch->spd;
}
