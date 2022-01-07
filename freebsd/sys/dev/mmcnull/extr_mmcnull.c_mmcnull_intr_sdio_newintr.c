
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcnull_softc {int dev; int sim; int sc_mtx; } ;
struct cam_path {int dummy; } ;


 int AC_UNIT_ATTENTION ;
 scalar_t__ CAM_REQ_CMP ;
 int MA_OWNED ;
 int cam_sim_path (int ) ;
 int device_printf (int ,char*) ;
 int mtx_assert (int *,int ) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_free_path (struct cam_path*) ;

__attribute__((used)) static void
mmcnull_intr_sdio_newintr(void *xsc) {
 struct mmcnull_softc *sc;
 struct cam_path *dpath;

 sc = (struct mmcnull_softc *) xsc;
 mtx_assert(&sc->sc_mtx, MA_OWNED);
 device_printf(sc->dev, "mmcnull_intr_sdio_newintr()\n");


 if (xpt_create_path(&dpath, ((void*)0), cam_sim_path(sc->sim), 0, 0) != CAM_REQ_CMP) {
  device_printf(sc->dev, "mmcnull_intr_sdio_newintr(): cannot create path\n");
  return;
 }
 xpt_async(AC_UNIT_ATTENTION, dpath, ((void*)0));
 xpt_free_path(dpath);
}
