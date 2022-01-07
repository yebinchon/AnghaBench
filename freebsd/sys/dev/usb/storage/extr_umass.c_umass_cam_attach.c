
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umass_softc {char* sc_name; int sc_unit; int sc_sim; } ;


 scalar_t__ bootverbose ;
 int cam_sim_path (int ) ;
 int printf (char*,char*,int,int,int) ;

__attribute__((used)) static void
umass_cam_attach(struct umass_softc *sc)
{

 if (bootverbose)

  printf("%s:%d:%d: Attached to scbus%d\n",
      sc->sc_name, cam_sim_path(sc->sc_sim),
      sc->sc_unit, cam_sim_path(sc->sc_sim));
}
