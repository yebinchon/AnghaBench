
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int dummy; } ;
struct cam_sim {int dummy; } ;


 struct mly_softc* cam_sim_softc (struct cam_sim*) ;
 int debug_called (int) ;
 int mly_done (struct mly_softc*) ;

__attribute__((used)) static void
mly_cam_poll(struct cam_sim *sim)
{
    struct mly_softc *sc = cam_sim_softc(sim);

    debug_called(2);

    mly_done(sc);
}
