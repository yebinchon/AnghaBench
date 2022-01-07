
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_buffer_dmat; int amr_buffer64_dmat; } ;
struct amr_command {scalar_t__ ac_data; int ac_length; int ac_datamap; int ac_tag; int ac_dmamap; int ac_dma64map; struct amr_softc* ac_sc; } ;


 scalar_t__ AC_IS_SG64 (struct amr_command*) ;
 int BUS_DMA_NOWAIT ;
 int amr_quartz_poll_command1 (struct amr_softc*,struct amr_command*) ;
 int amr_setup_polled_dmamap ;
 scalar_t__ bus_dmamap_load (int ,int ,scalar_t__,int ,int ,struct amr_command*,int ) ;
 int debug_called (int) ;

__attribute__((used)) static int
amr_quartz_poll_command(struct amr_command *ac)
{
    struct amr_softc *sc = ac->ac_sc;
    int error;

    debug_called(2);

    error = 0;

    if (AC_IS_SG64(ac)) {
 ac->ac_tag = sc->amr_buffer64_dmat;
 ac->ac_datamap = ac->ac_dma64map;
    } else {
 ac->ac_tag = sc->amr_buffer_dmat;
 ac->ac_datamap = ac->ac_dmamap;
    }


    if (ac->ac_data != 0) {
 if (bus_dmamap_load(ac->ac_tag, ac->ac_datamap, ac->ac_data,
     ac->ac_length, amr_setup_polled_dmamap, ac, BUS_DMA_NOWAIT) != 0) {
     error = 1;
 }
    } else {
 error = amr_quartz_poll_command1(sc, ac);
    }

    return (error);
}
