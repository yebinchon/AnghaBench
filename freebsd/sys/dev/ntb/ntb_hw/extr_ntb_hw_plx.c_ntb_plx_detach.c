
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {int mw_count; int conf_res; int conf_rid; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {int mw_res; int mw_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct ntb_plx_softc* device_get_softc (int ) ;
 int ntb_plx_teardown_intr (int ) ;
 int ntb_unregister_device (int ) ;

__attribute__((used)) static int
ntb_plx_detach(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 struct ntb_plx_mw_info *mw;
 int i;


 ntb_unregister_device(dev);


 ntb_plx_teardown_intr(dev);


 for (i = 0; i < sc->mw_count; i++) {
  mw = &sc->mw_info[i];
  bus_release_resource(dev, SYS_RES_MEMORY, mw->mw_rid,
      mw->mw_res);
 }
 bus_release_resource(dev, SYS_RES_MEMORY, sc->conf_rid, sc->conf_res);
 return (0);
}
