
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pchinfo {int fmt; int spd; scalar_t__ rslot; scalar_t__ lslot; int buffer; } ;
typedef int bus_addr_t ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int ds_initpbank (scalar_t__,int,int,int,int ,int ,int) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
ds_setuppch(struct sc_pchinfo *ch)
{
 int stereo, b16, c, sz;
 bus_addr_t addr;

 stereo = (AFMT_CHANNEL(ch->fmt) > 1)? 1 : 0;
 b16 = (ch->fmt & AFMT_16BIT)? 1 : 0;
 c = stereo? 1 : 0;
 addr = sndbuf_getbufaddr(ch->buffer);
 sz = sndbuf_getsize(ch->buffer);

 ds_initpbank(ch->lslot, c, stereo, b16, ch->spd, addr, sz);
 ds_initpbank(ch->lslot + 1, c, stereo, b16, ch->spd, addr, sz);
 ds_initpbank(ch->rslot, 2, stereo, b16, ch->spd, addr, sz);
 ds_initpbank(ch->rslot + 1, 2, stereo, b16, ch->spd, addr, sz);
}
