
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int dummy; } ;
struct mly_event {int dummy; } ;
struct mly_command {scalar_t__ mc_status; scalar_t__ mc_data; struct mly_softc* mc_sc; } ;


 int M_DEVBUF ;
 scalar_t__ SCSI_STATUS_OK ;
 int debug_called (int) ;
 int free (struct mly_event*,int ) ;
 int mly_check_event (struct mly_softc*) ;
 int mly_process_event (struct mly_softc*,struct mly_event*) ;
 int mly_release_command (struct mly_command*) ;

__attribute__((used)) static void
mly_complete_event(struct mly_command *mc)
{
    struct mly_softc *sc = mc->mc_sc;
    struct mly_event *me = (struct mly_event *)mc->mc_data;

    debug_called(1);




    if (mc->mc_status == SCSI_STATUS_OK) {
 mly_process_event(sc, me);
 free(me, M_DEVBUF);
    }
    mly_release_command(mc);




    mly_check_event(sc);
}
