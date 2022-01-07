
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct sc_info {TYPE_2__ rch; TYPE_1__ pch; } ;


 int CS4281PCI_HDSR (int ) ;
 int CS4281PCI_HICR ;
 int CS4281PCI_HICR_EOI ;
 int CS4281PCI_HISR ;
 int CS4281PCI_HISR_DMA (int ) ;
 int CS4281_DMA_PLAY ;
 int CS4281_DMA_REC ;
 int chn_intr (int ) ;
 int cs4281_rd (struct sc_info*,int ) ;
 int cs4281_wr (struct sc_info*,int ,int ) ;

__attribute__((used)) static void
cs4281_intr(void *p)
{
    struct sc_info *sc = (struct sc_info *)p;
    u_int32_t hisr;

    hisr = cs4281_rd(sc, CS4281PCI_HISR);

    if (hisr == 0) return;

    if (hisr & CS4281PCI_HISR_DMA(CS4281_DMA_PLAY)) {
 chn_intr(sc->pch.channel);
 cs4281_rd(sc, CS4281PCI_HDSR(CS4281_DMA_PLAY));
    }

    if (hisr & CS4281PCI_HISR_DMA(CS4281_DMA_REC)) {
 chn_intr(sc->rch.channel);
 cs4281_rd(sc, CS4281PCI_HDSR(CS4281_DMA_REC));
    }


    cs4281_wr(sc, CS4281PCI_HICR, CS4281PCI_HICR_EOI);
}
