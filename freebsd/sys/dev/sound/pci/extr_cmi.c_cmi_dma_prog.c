
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int phys_buf; int bps; int buffer; } ;


 int CMI_INTR_PER_BUFFER ;
 int cmi_wr (struct sc_info*,int,int,int) ;
 int sndbuf_getbufaddr (int ) ;
 scalar_t__ sndbuf_getsize (int ) ;

__attribute__((used)) static void
cmi_dma_prog(struct sc_info *sc, struct sc_chinfo *ch, u_int32_t base)
{
 u_int32_t s, i, sz;

 ch->phys_buf = sndbuf_getbufaddr(ch->buffer);

 cmi_wr(sc, base, ch->phys_buf, 4);
 sz = (u_int32_t)sndbuf_getsize(ch->buffer);

 s = sz / ch->bps - 1;
 cmi_wr(sc, base + 4, s, 2);

 i = sz / (ch->bps * CMI_INTR_PER_BUFFER) - 1;
 cmi_wr(sc, base + 6, i, 2);
}
