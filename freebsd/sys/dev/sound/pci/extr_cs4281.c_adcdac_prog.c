
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_setup; int bps; int buffer; int dma_chan; struct sc_info* parent; } ;


 int CS4281PCI_DBA (int ) ;
 int CS4281PCI_DBC (int ) ;
 int adcdac_go (struct sc_chinfo*,int ) ;
 int cs4281_wr (struct sc_info*,int ,int) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
adcdac_prog(struct sc_chinfo *ch)
{
    struct sc_info *sc = ch->parent;
    u_int32_t go;

    if (!ch->dma_setup) {
 go = adcdac_go(ch, 0);
 cs4281_wr(sc, CS4281PCI_DBA(ch->dma_chan),
    sndbuf_getbufaddr(ch->buffer));
 cs4281_wr(sc, CS4281PCI_DBC(ch->dma_chan),
    sndbuf_getsize(ch->buffer) / ch->bps - 1);
 ch->dma_setup = 1;
 adcdac_go(ch, go);
    }
}
