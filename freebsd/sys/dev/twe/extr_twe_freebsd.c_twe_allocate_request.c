
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_buffer_dmat; } ;
struct twe_request {int tr_tag; int tr_dmamap; struct twe_softc* tr_sc; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int TWE_MALLOC_CLASS ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 struct twe_request* malloc (int,int ,int) ;
 int twe_free_request (struct twe_request*) ;
 int twe_printf (struct twe_softc*,char*,int) ;

struct twe_request *
twe_allocate_request(struct twe_softc *sc, int tag)
{
    struct twe_request *tr;

    tr = malloc(sizeof(struct twe_request), TWE_MALLOC_CLASS, M_WAITOK | M_ZERO);
    tr->tr_sc = sc;
    tr->tr_tag = tag;
    if (bus_dmamap_create(sc->twe_buffer_dmat, 0, &tr->tr_dmamap)) {
 twe_free_request(tr);
 twe_printf(sc, "unable to allocate dmamap for tag %d\n", tag);
 return(((void*)0));
    }
    return(tr);
}
