
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct via_chinfo {int blksz; TYPE_1__* sgd_table; int buffer; } ;
struct TYPE_2__ {int ptr; int flags; } ;


 int VIA_DMAOP_EOL ;
 int VIA_DMAOP_FLAG ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static int
via_buildsgdt(struct via_chinfo *ch)
{
 u_int32_t phys_addr, flag;
 int i, segs, seg_size;







 seg_size = ch->blksz;
 segs = sndbuf_getsize(ch->buffer) / seg_size;
 phys_addr = sndbuf_getbufaddr(ch->buffer);

 for (i = 0; i < segs; i++) {
  flag = (i == segs - 1)? VIA_DMAOP_EOL : VIA_DMAOP_FLAG;
  ch->sgd_table[i].ptr = phys_addr + (i * seg_size);
  ch->sgd_table[i].flags = flag | seg_size;
 }

 return 0;
}
