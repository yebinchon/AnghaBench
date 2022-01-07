
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtscsi_softc {int dummy; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;




 int VTSCSI_TRACE ;
 struct vtscsi_softc* cam_sim_softc (struct cam_sim*) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int) ;

__attribute__((used)) static void
vtscsi_cam_async(void *cb_arg, uint32_t code, struct cam_path *path, void *arg)
{
 struct cam_sim *sim;
 struct vtscsi_softc *sc;

 sim = cb_arg;
 sc = cam_sim_softc(sim);

 vtscsi_dprintf(sc, VTSCSI_TRACE, "code=%u\n", code);





 switch (code) {
 case 129:
  break;
 case 128:
  break;
 }
}
