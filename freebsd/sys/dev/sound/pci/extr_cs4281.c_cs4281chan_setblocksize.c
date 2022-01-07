
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int bufsz; } ;
struct sc_chinfo {int blksz; scalar_t__ dma_setup; int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 int DEB (int ) ;
 int MIN (int,int) ;
 int adcdac_go (struct sc_chinfo*,int) ;
 int adcdac_prog (struct sc_chinfo*) ;
 int printf (char*,int,int) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static u_int32_t
cs4281chan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
    struct sc_chinfo *ch = data;
    struct sc_info *sc = ch->parent;
    u_int32_t go;

    go = adcdac_go(ch, 0);



    ch->blksz = MIN(blocksize, sc->bufsz / 2);
    sndbuf_resize(ch->buffer, 2, ch->blksz);
    ch->dma_setup = 0;
    adcdac_prog(ch);
    adcdac_go(ch, go);

    DEB(printf("cs4281chan_setblocksize: blksz %d Setting %d\n", blocksize, ch->blksz));

    return ch->blksz;
}
