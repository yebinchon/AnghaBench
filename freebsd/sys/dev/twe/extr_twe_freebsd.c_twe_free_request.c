
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_buffer_dmat; } ;
struct twe_request {int tr_dmamap; struct twe_softc* tr_sc; } ;


 int TWE_MALLOC_CLASS ;
 int bus_dmamap_destroy (int ,int ) ;
 int debug_called (int) ;
 int free (struct twe_request*,int ) ;

void
twe_free_request(struct twe_request *tr)
{
    struct twe_softc *sc = tr->tr_sc;

    debug_called(4);

    bus_dmamap_destroy(sc->twe_buffer_dmat, tr->tr_dmamap);
    free(tr, TWE_MALLOC_CLASS);
}
