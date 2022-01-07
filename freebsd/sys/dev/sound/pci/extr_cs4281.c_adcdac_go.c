
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_chan; struct sc_info* parent; } ;


 int CS4281PCI_DCR (int ) ;
 int CS4281PCI_DCR_MSK ;
 int CS4281PCI_HICR ;
 int CS4281PCI_HICR_EOI ;
 int cs4281_clr4 (struct sc_info*,int ,int) ;
 int cs4281_rd (struct sc_info*,int ) ;
 int cs4281_set4 (struct sc_info*,int ,int) ;
 int cs4281_wr (struct sc_info*,int ,int ) ;

__attribute__((used)) static u_int32_t
adcdac_go(struct sc_chinfo *ch, u_int32_t go)
{
    struct sc_info *sc = ch->parent;
    u_int32_t going;

    going = !(cs4281_rd(sc, CS4281PCI_DCR(ch->dma_chan)) & CS4281PCI_DCR_MSK);

    if (go)
 cs4281_clr4(sc, CS4281PCI_DCR(ch->dma_chan), CS4281PCI_DCR_MSK);
    else
 cs4281_set4(sc, CS4281PCI_DCR(ch->dma_chan), CS4281PCI_DCR_MSK);

    cs4281_wr(sc, CS4281PCI_HICR, CS4281PCI_HICR_EOI);

    return going;
}
