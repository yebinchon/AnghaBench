
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int period; int * rbuf; int * pbuf; } ;
struct sc_chinfo {scalar_t__ dir; int size; int lslot; int rslot; int * data; int buffer; struct sc_pcminfo* parent; } ;


 int HDSPE_CHANBUF_SAMPLES ;
 scalar_t__ PCMDIR_PLAY ;
 int sndbuf_getfreeptr (int ) ;
 int sndbuf_getready (int ) ;
 int sndbuf_getreadyptr (int ) ;

__attribute__((used)) static void
buffer_copy(struct sc_chinfo *ch)
{
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 int ssize, dsize;
 int src, dst;
 int length;
 int i;

 scp = ch->parent;
 sc = scp->sc;

 length = sndbuf_getready(ch->buffer) /
     (4 * 2 );

 if (ch->dir == PCMDIR_PLAY) {
  src = sndbuf_getreadyptr(ch->buffer);
 } else {
  src = sndbuf_getfreeptr(ch->buffer);
 }

 src /= 4;
 dst = src / 2;

 ssize = ch->size / 4;
 dsize = ch->size / 8;





 for (i = 0; i < sc->period * 2 ; i++) {
  if (ch->dir == PCMDIR_PLAY) {
   sc->pbuf[dst + HDSPE_CHANBUF_SAMPLES * ch->lslot] =
       ch->data[src];
   sc->pbuf[dst + HDSPE_CHANBUF_SAMPLES * ch->rslot] =
       ch->data[src + 1];

  } else {
   ch->data[src] =
       sc->rbuf[dst + HDSPE_CHANBUF_SAMPLES * ch->lslot];
   ch->data[src+1] =
       sc->rbuf[dst + HDSPE_CHANBUF_SAMPLES * ch->rslot];
  }

  dst+=1;
  dst %= dsize;
  src+=2;
  src %= ssize;
 }
}
