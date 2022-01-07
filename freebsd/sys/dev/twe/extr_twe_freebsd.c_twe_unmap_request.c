
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_buffer_dmat; int twe_immediate_map; int twe_immediate_dmat; int twe_cmdmap; int twe_cmd_dmat; } ;
struct twe_request {int tr_flags; int * tr_realdata; int * tr_data; int tr_dmamap; int tr_length; struct twe_softc* tr_sc; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int TWE_CMD_ALIGNBUF ;
 int TWE_CMD_DATAIN ;
 int TWE_CMD_DATAOUT ;
 int TWE_CMD_IMMEDIATE ;
 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_MALLOC_CLASS ;
 int bcopy (int *,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int debug_called (int) ;
 int dumping ;
 int free (int *,int ) ;

void
twe_unmap_request(struct twe_request *tr)
{
    struct twe_softc *sc = tr->tr_sc;

    debug_called(4);

    if (!dumping)
 TWE_IO_ASSERT_LOCKED(sc);
    bus_dmamap_sync(sc->twe_cmd_dmat, sc->twe_cmdmap, BUS_DMASYNC_POSTWRITE);




    if (tr->tr_data != ((void*)0)) {
 if (tr->tr_flags & TWE_CMD_DATAIN) {
     if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
  bus_dmamap_sync(sc->twe_immediate_dmat, sc->twe_immediate_map,
    BUS_DMASYNC_POSTREAD);
     } else {
  bus_dmamap_sync(sc->twe_buffer_dmat, tr->tr_dmamap,
    BUS_DMASYNC_POSTREAD);
     }


     if (tr->tr_flags & TWE_CMD_ALIGNBUF)
  bcopy(tr->tr_data, tr->tr_realdata, tr->tr_length);
 }
 if (tr->tr_flags & TWE_CMD_DATAOUT) {
     if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
  bus_dmamap_sync(sc->twe_immediate_dmat, sc->twe_immediate_map,
    BUS_DMASYNC_POSTWRITE);
     } else {
  bus_dmamap_sync(sc->twe_buffer_dmat, tr->tr_dmamap,
    BUS_DMASYNC_POSTWRITE);
     }
 }

 if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
     bus_dmamap_unload(sc->twe_immediate_dmat, sc->twe_immediate_map);
 } else {
     bus_dmamap_unload(sc->twe_buffer_dmat, tr->tr_dmamap);
 }
    }


    if (tr->tr_flags & TWE_CMD_ALIGNBUF) {
 free(tr->tr_data, TWE_MALLOC_CLASS);
 tr->tr_data = tr->tr_realdata;
    }
}
