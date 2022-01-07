
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {scalar_t__ (* amr_submit_command ) (struct amr_command*) ;int amr_state; int amr_buffer_dmat; int amr_buffer64_dmat; } ;
struct amr_command {int ac_flags; int ac_length; int * ac_data; int ac_datamap; int ac_tag; int ac_dmamap; int ac_dma64map; struct amr_softc* ac_sc; } ;
typedef int bus_dmamap_callback_t ;


 scalar_t__ AC_IS_SG64 (struct amr_command*) ;
 int AMR_CMD_CCB ;
 int AMR_CMD_MAPPED ;
 int AMR_STATE_QUEUE_FRZN ;
 scalar_t__ EBUSY ;
 scalar_t__ EINPROGRESS ;
 int amr_freeslot (struct amr_command*) ;
 int amr_requeue_ready (struct amr_command*) ;
 int * amr_setup_ccb ;
 int * amr_setup_data ;
 scalar_t__ bus_dmamap_load (int ,int ,int *,int ,int *,struct amr_command*,int ) ;
 int debug_called (int) ;
 scalar_t__ stub1 (struct amr_command*) ;

__attribute__((used)) static int
amr_mapcmd(struct amr_command *ac)
{
    bus_dmamap_callback_t *cb;
    struct amr_softc *sc = ac->ac_sc;

    debug_called(3);

    if (AC_IS_SG64(ac)) {
 ac->ac_tag = sc->amr_buffer64_dmat;
 ac->ac_datamap = ac->ac_dma64map;
    } else {
 ac->ac_tag = sc->amr_buffer_dmat;
 ac->ac_datamap = ac->ac_dmamap;
    }

    if (ac->ac_flags & AMR_CMD_CCB)
 cb = amr_setup_ccb;
    else
 cb = amr_setup_data;


    if ((ac->ac_flags & AMR_CMD_MAPPED) == 0 && (ac->ac_data != ((void*)0))) {

 if (bus_dmamap_load(ac->ac_tag, ac->ac_datamap, ac->ac_data,
      ac->ac_length, cb, ac, 0) == EINPROGRESS) {
     sc->amr_state |= AMR_STATE_QUEUE_FRZN;
 }
   } else {
     if (sc->amr_submit_command(ac) == EBUSY) {
     amr_freeslot(ac);
     amr_requeue_ready(ac);
 }
   }

    return (0);
}
