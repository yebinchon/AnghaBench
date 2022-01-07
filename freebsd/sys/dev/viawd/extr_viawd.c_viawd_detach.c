
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct viawd_softc {int * wd_res; int wd_rid; int sb_dev; int * ev_tag; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int SYS_RES_MEMORY ;
 int VIAWD_MEM_CTRL ;
 int VIAWD_MEM_CTRL_ENABLE ;
 int VIAWD_TIMEOUT_SHUTDOWN ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct viawd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int viawd_read_4 (struct viawd_softc*,int ) ;
 int viawd_tmr_set (struct viawd_softc*,int ) ;
 int viawd_tmr_state (struct viawd_softc*,int) ;
 int watchdog_list ;

__attribute__((used)) static int
viawd_detach(device_t dev)
{
 struct viawd_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);


 if (sc->ev_tag != ((void*)0))
  EVENTHANDLER_DEREGISTER(watchdog_list, sc->ev_tag);
 sc->ev_tag = ((void*)0);





 reg = viawd_read_4(sc, VIAWD_MEM_CTRL);
 if (reg & VIAWD_MEM_CTRL_ENABLE) {
  viawd_tmr_set(sc, VIAWD_TIMEOUT_SHUTDOWN);
  viawd_tmr_state(sc, 1);
  device_printf(dev,
      "Keeping watchog alive during shutdown for %d seconds\n",
      VIAWD_TIMEOUT_SHUTDOWN);
 }

 if (sc->wd_res != ((void*)0))
  bus_release_resource(sc->sb_dev, SYS_RES_MEMORY,
      sc->wd_rid, sc->wd_res);

 return (0);
}
