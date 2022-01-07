
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_dev; } ;
struct amr_command {int ac_flags; int * ac_complete; struct amr_softc* ac_sc; } ;


 int AMR_CMD_BUSY ;
 int DELAY (int) ;
 int EIO ;
 int amr_done (struct amr_softc*) ;
 int amr_start (struct amr_command*) ;
 int debug_called (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
amr_std_poll_command(struct amr_command *ac)
{
    struct amr_softc *sc = ac->ac_sc;
    int error, count;

    debug_called(2);

    ac->ac_complete = ((void*)0);
    if ((error = amr_start(ac)) != 0)
 return(error);

    count = 0;
    do {




 amr_done(sc);
 DELAY(1000);
    } while ((ac->ac_flags & AMR_CMD_BUSY) && (count++ < 1000));
    if (!(ac->ac_flags & AMR_CMD_BUSY)) {
 error = 0;
    } else {

 error = EIO;
 device_printf(sc->amr_dev, "polled command timeout\n");
    }
    return(error);
}
