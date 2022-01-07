
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_buffer_dmat; int ciss_command_map; int ciss_command_dmat; } ;
struct ciss_request {int cr_flags; int cr_datamap; int * cr_data; struct ciss_softc* cr_sc; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CISS_REQ_DATAIN ;
 int CISS_REQ_DATAOUT ;
 int CISS_REQ_MAPPED ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int debug_called (int) ;

__attribute__((used)) static void
ciss_unmap_request(struct ciss_request *cr)
{
    struct ciss_softc *sc;

    debug_called(2);

    sc = cr->cr_sc;


    if ((cr->cr_flags & CISS_REQ_MAPPED) == 0)
 return;

    bus_dmamap_sync(sc->ciss_command_dmat, sc->ciss_command_map,
      BUS_DMASYNC_POSTWRITE);

    if (cr->cr_data == ((void*)0))
 goto out;

    if (cr->cr_flags & CISS_REQ_DATAIN)
 bus_dmamap_sync(sc->ciss_buffer_dmat, cr->cr_datamap, BUS_DMASYNC_POSTREAD);
    if (cr->cr_flags & CISS_REQ_DATAOUT)
 bus_dmamap_sync(sc->ciss_buffer_dmat, cr->cr_datamap, BUS_DMASYNC_POSTWRITE);

    bus_dmamap_unload(sc->ciss_buffer_dmat, cr->cr_datamap);
out:
    cr->cr_flags &= ~CISS_REQ_MAPPED;
}
