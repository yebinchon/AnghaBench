
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_rchinfo {int fmt; scalar_t__ num; int spd; TYPE_1__* slot; int buffer; struct sc_info* parent; } ;
struct sc_info {int dummy; } ;
typedef int bus_addr_t ;
struct TYPE_2__ {int PgLoopEnd; scalar_t__ NumOfLoops; scalar_t__ PgStart; int PgBase; } ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 scalar_t__ DS1_RECPRIMARY ;
 int YDSXGR_ADCFORMAT ;
 int YDSXGR_ADCSLOTSR ;
 int YDSXGR_RECFORMAT ;
 int YDSXGR_RECSLOTSR ;
 int ds_wr (struct sc_info*,int ,int,int) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
ds_setuprch(struct sc_rchinfo *ch)
{
 struct sc_info *sc = ch->parent;
 int stereo, b16, i, sz, pri;
 u_int32_t x, y;
 bus_addr_t addr;

 stereo = (AFMT_CHANNEL(ch->fmt) > 1)? 1 : 0;
 b16 = (ch->fmt & AFMT_16BIT)? 1 : 0;
 addr = sndbuf_getbufaddr(ch->buffer);
 sz = sndbuf_getsize(ch->buffer);
 pri = (ch->num == DS1_RECPRIMARY)? 1 : 0;

 for (i = 0; i < 2; i++) {
  ch->slot[i].PgBase = addr;
  ch->slot[i].PgLoopEnd = sz;
  ch->slot[i].PgStart = 0;
  ch->slot[i].NumOfLoops = 0;
 }
 x = (b16? 0x00 : 0x01) | (stereo? 0x02 : 0x00);
 y = (48000 * 4096) / ch->spd;
 y--;

 ds_wr(sc, pri? YDSXGR_ADCFORMAT : YDSXGR_RECFORMAT, x, 4);
 ds_wr(sc, pri? YDSXGR_ADCSLOTSR : YDSXGR_RECSLOTSR, y, 4);
}
