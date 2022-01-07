
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int * mm_res; int mm_rid; int dev; int * parent_dmat; int * buffer_dmat; scalar_t__ hcbs; int hcb_cnt; scalar_t__ sim; scalar_t__ bus_path; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ CAM_REQ_CMP ;
 int M_PVSCSI ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int cam_sim_free (scalar_t__,int ) ;
 int cam_sim_path (scalar_t__) ;
 int device_printf (int ,char*,scalar_t__) ;
 int free (scalar_t__,int ) ;
 int pvscsi_dma_free_per_hcb (struct pvscsi_softc*,int ) ;
 int pvscsi_free_interrupts (struct pvscsi_softc*) ;
 int pvscsi_free_rings (struct pvscsi_softc*) ;
 scalar_t__ xpt_bus_deregister (int ) ;
 int xpt_free_path (scalar_t__) ;

__attribute__((used)) static void
pvscsi_free_all(struct pvscsi_softc *sc)
{

 if (sc->sim) {
  int32_t status;

  if (sc->bus_path) {
   xpt_free_path(sc->bus_path);
  }

  status = xpt_bus_deregister(cam_sim_path(sc->sim));
  if (status != CAM_REQ_CMP) {
   device_printf(sc->dev,
       "Error deregistering bus, status=%d\n", status);
  }

  cam_sim_free(sc->sim, TRUE);
 }

 pvscsi_dma_free_per_hcb(sc, sc->hcb_cnt);

 if (sc->hcbs) {
  free(sc->hcbs, M_PVSCSI);
 }

 pvscsi_free_rings(sc);

 pvscsi_free_interrupts(sc);

 if (sc->buffer_dmat != ((void*)0)) {
  bus_dma_tag_destroy(sc->buffer_dmat);
 }

 if (sc->parent_dmat != ((void*)0)) {
  bus_dma_tag_destroy(sc->parent_dmat);
 }

 if (sc->mm_res != ((void*)0)) {
  bus_release_resource(sc->dev, SYS_RES_MEMORY, sc->mm_rid,
      sc->mm_res);
 }
}
