
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdma_transfer_status_t ;
typedef int xdma_channel_t ;
struct xdma_request {scalar_t__ block_len; } ;
struct sc_pcminfo {struct sc_chinfo* chan; struct aic_softc* sc; } ;
struct sc_chinfo {int channel; scalar_t__ run; int buffer; } ;
struct aic_softc {int pos; int * xchan; struct xdma_request req; } ;


 int chn_intr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static int
aic_intr(void *arg, xdma_transfer_status_t *status)
{
 struct sc_pcminfo *scp;
 struct xdma_request *req;
 xdma_channel_t *xchan;
 struct sc_chinfo *ch;
 struct aic_softc *sc;
 int bufsize;

 scp = arg;
 sc = scp->sc;
 ch = &scp->chan[0];
 req = &sc->req;

 xchan = sc->xchan;

 bufsize = sndbuf_getsize(ch->buffer);

 sc->pos += req->block_len;
 if (sc->pos >= bufsize)
  sc->pos -= bufsize;

 if (ch->run)
  chn_intr(ch->channel);

 return (0);
}
