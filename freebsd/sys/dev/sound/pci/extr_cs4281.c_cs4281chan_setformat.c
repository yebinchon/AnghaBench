
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {scalar_t__ dma_chan; int fmt; scalar_t__ dma_setup; int bps; struct sc_info* parent; } ;
typedef int kobj_t ;


 int CS4281PCI_DMR (scalar_t__) ;
 int CS4281PCI_DMR_AUTO ;
 int CS4281PCI_DMR_DMA ;
 int CS4281PCI_DMR_TR_PLAY ;
 int CS4281PCI_DMR_TR_REC ;
 scalar_t__ CS4281_DMA_PLAY ;
 int adcdac_go (struct sc_chinfo*,int) ;
 int cs4281_format_to_bps (int) ;
 int cs4281_format_to_dmr (int) ;
 int cs4281_wr (struct sc_info*,int ,int) ;

__attribute__((used)) static int
cs4281chan_setformat(kobj_t obj, void *data, u_int32_t format)
{
    struct sc_chinfo *ch = data;
    struct sc_info *sc = ch->parent;
    u_int32_t v, go;

    go = adcdac_go(ch, 0);

    if (ch->dma_chan == CS4281_DMA_PLAY)
 v = CS4281PCI_DMR_TR_PLAY;
    else
 v = CS4281PCI_DMR_TR_REC;
    v |= CS4281PCI_DMR_DMA | CS4281PCI_DMR_AUTO;
    v |= cs4281_format_to_dmr(format);
    cs4281_wr(sc, CS4281PCI_DMR(ch->dma_chan), v);

    adcdac_go(ch, go);

    ch->fmt = format;
    ch->bps = cs4281_format_to_bps(format);
    ch->dma_setup = 0;

    return 0;
}
