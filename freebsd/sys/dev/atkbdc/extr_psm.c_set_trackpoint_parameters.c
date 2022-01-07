
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sensitivity; int uplateau; int inertia; int reach; int draghys; int mindrag; int upthresh; int threshold; int jenks; int ztime; int pts; int skipback; } ;
struct psm_softc {TYPE_1__ tpinfo; } ;


 int trackpoint_command (struct psm_softc*,int,int,int) ;

__attribute__((used)) static void
set_trackpoint_parameters(struct psm_softc *sc)
{
 trackpoint_command(sc, 0x81, 0x4a, sc->tpinfo.sensitivity);
 trackpoint_command(sc, 0x81, 0x60, sc->tpinfo.uplateau);
 trackpoint_command(sc, 0x81, 0x4d, sc->tpinfo.inertia);
 trackpoint_command(sc, 0x81, 0x57, sc->tpinfo.reach);
 trackpoint_command(sc, 0x81, 0x58, sc->tpinfo.draghys);
 trackpoint_command(sc, 0x81, 0x59, sc->tpinfo.mindrag);
 trackpoint_command(sc, 0x81, 0x5a, sc->tpinfo.upthresh);
 trackpoint_command(sc, 0x81, 0x5c, sc->tpinfo.threshold);
 trackpoint_command(sc, 0x81, 0x5d, sc->tpinfo.jenks);
 trackpoint_command(sc, 0x81, 0x5e, sc->tpinfo.ztime);
 if (sc->tpinfo.pts == 0x01)
  trackpoint_command(sc, 0x47, 0x2c, 0x01);
 if (sc->tpinfo.skipback == 0x01)
  trackpoint_command(sc, 0x47, 0x2d, 0x08);
}
