
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {scalar_t__ ciss_perf; int ciss_buffer_dmat; int ciss_command_map; int ciss_command_dmat; } ;
struct ciss_request {int cr_flags; int cr_ccphys; int cr_sg_tag; int cr_length; int * cr_data; int cr_datamap; struct ciss_softc* cr_sc; } ;


 int BUS_DMASYNC_PREWRITE ;
 int CISS_REQ_BUSY ;
 int CISS_REQ_CCB ;
 int CISS_REQ_MAPPED ;
 int CISS_SG_NONE ;
 int CISS_TL_PERF_POST_CMD (struct ciss_softc*,struct ciss_request*) ;
 int CISS_TL_SIMPLE_POST_CMD (struct ciss_softc*,int ) ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct ciss_request*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,int *,int ,struct ciss_request*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ciss_request_map_helper ;
 int debug_called (int) ;

__attribute__((used)) static int
ciss_map_request(struct ciss_request *cr)
{
    struct ciss_softc *sc;
    int error = 0;

    debug_called(2);

    sc = cr->cr_sc;


    if (cr->cr_flags & CISS_REQ_MAPPED)
 return(0);

    cr->cr_flags |= CISS_REQ_MAPPED;

    bus_dmamap_sync(sc->ciss_command_dmat, sc->ciss_command_map,
      BUS_DMASYNC_PREWRITE);

    if (cr->cr_data != ((void*)0)) {
 if (cr->cr_flags & CISS_REQ_CCB)
  error = bus_dmamap_load_ccb(sc->ciss_buffer_dmat,
     cr->cr_datamap, cr->cr_data,
     ciss_request_map_helper, cr, 0);
 else
  error = bus_dmamap_load(sc->ciss_buffer_dmat, cr->cr_datamap,
     cr->cr_data, cr->cr_length,
     ciss_request_map_helper, cr, 0);
 if (error != 0)
     return (error);
    } else {



 cr->cr_sg_tag = CISS_SG_NONE;
 cr->cr_flags |= CISS_REQ_BUSY;
 if (sc->ciss_perf)
     CISS_TL_PERF_POST_CMD(sc, cr);
 else
     CISS_TL_SIMPLE_POST_CMD(sc, cr->cr_ccphys);
    }

    return(0);
}
