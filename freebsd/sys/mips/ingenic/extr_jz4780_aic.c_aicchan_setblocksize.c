
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {struct aic_softc* sc; } ;
struct sc_chinfo {int buffer; struct sc_pcminfo* parent; } ;
struct aic_softc {int dma_size; } ;
typedef int kobj_t ;


 int sndbuf_getblksz (int ) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static uint32_t
aicchan_setblocksize(kobj_t obj, void *data, uint32_t blocksize)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct aic_softc *sc;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 sndbuf_resize(ch->buffer, sc->dma_size / blocksize, blocksize);

 return (sndbuf_getblksz(ch->buffer));
}
