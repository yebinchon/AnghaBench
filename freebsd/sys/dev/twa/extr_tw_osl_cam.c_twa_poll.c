
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int ctlr_handle; } ;
struct cam_sim {int dummy; } ;
typedef int TW_VOID ;


 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int tw_cl_interrupt (int *) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*,struct twa_softc*) ;

TW_VOID
twa_poll(struct cam_sim *sim)
{
 struct twa_softc *sc = (struct twa_softc *)(cam_sim_softc(sim));

 tw_osli_dbg_dprintf(3, sc, "entering; sc = %p", sc);
 tw_cl_interrupt(&(sc->ctlr_handle));
 tw_osli_dbg_dprintf(3, sc, "exiting; sc = %p", sc);
}
