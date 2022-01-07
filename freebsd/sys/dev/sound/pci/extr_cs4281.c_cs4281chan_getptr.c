
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_chan; int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 int CS4281PCI_DBA (int ) ;
 int CS4281PCI_DCA (int ) ;
 int cs4281_rd (struct sc_info*,int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static u_int32_t
cs4281chan_getptr(kobj_t obj, void *data)
{
    struct sc_chinfo *ch = data;
    struct sc_info *sc = ch->parent;
    u_int32_t dba, dca, ptr;
    int sz;

    sz = sndbuf_getsize(ch->buffer);
    dba = cs4281_rd(sc, CS4281PCI_DBA(ch->dma_chan));
    dca = cs4281_rd(sc, CS4281PCI_DCA(ch->dma_chan));
    ptr = (dca - dba + sz) % sz;

    return ptr;
}
