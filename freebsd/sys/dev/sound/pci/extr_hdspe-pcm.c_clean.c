
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int * pbuf; int * rbuf; } ;
struct sc_chinfo {scalar_t__ dir; int lslot; int rslot; struct sc_pcminfo* parent; } ;


 int HDSPE_CHANBUF_SAMPLES ;
 int HDSPE_CHANBUF_SIZE ;
 scalar_t__ PCMDIR_PLAY ;
 int bzero (int *,int ) ;

__attribute__((used)) static int
clean(struct sc_chinfo *ch)
{
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 uint32_t *buf;

 scp = ch->parent;
 sc = scp->sc;
 buf = sc->rbuf;

 if (ch->dir == PCMDIR_PLAY) {
  buf = sc->pbuf;
 }

 bzero(buf + HDSPE_CHANBUF_SAMPLES * ch->lslot, HDSPE_CHANBUF_SIZE);
 bzero(buf + HDSPE_CHANBUF_SAMPLES * ch->rslot, HDSPE_CHANBUF_SIZE);

 return (0);
}
