
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int sysctl_ctxt; struct cdev* ctrl_dev; int * reg_res; int reg_res_id; int bus_dev; int * irq_res; int irq_res_id; scalar_t__ parent_tag; scalar_t__ ioctl_tag; scalar_t__ dma_tag; scalar_t__ cmd_tag; int cmd_map; scalar_t__ dma_mem; scalar_t__ non_dma_mem; scalar_t__ req_ctx_buf; scalar_t__ ioctl_map; } ;
struct tw_osli_req_context {scalar_t__ dma_map; int ioctl_wake_timeout_lock; } ;
struct cdev {int dummy; } ;
typedef int TW_VOID ;
typedef int TW_INT32 ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TW_OSLI_FREE_Q ;
 int TW_OSLI_MALLOC_CLASS ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int destroy_dev (struct cdev*) ;
 int free (scalar_t__,int ) ;
 int mtx_destroy (int ) ;
 int sysctl_ctx_free (int *) ;
 int tw_osli_cam_detach (struct twa_softc*) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*,...) ;
 struct tw_osli_req_context* tw_osli_req_q_remove_head (struct twa_softc*,int ) ;
 int twa_teardown_intr (struct twa_softc*) ;

__attribute__((used)) static TW_VOID
tw_osli_free_resources(struct twa_softc *sc)
{
 struct tw_osli_req_context *req;
 TW_INT32 error = 0;

 tw_osli_dbg_dprintf(3, sc, "entered");


 tw_osli_cam_detach(sc);

 if (sc->req_ctx_buf)
  while ((req = tw_osli_req_q_remove_head(sc, TW_OSLI_FREE_Q)) !=
   ((void*)0)) {
   mtx_destroy(req->ioctl_wake_timeout_lock);

   if ((error = bus_dmamap_destroy(sc->dma_tag,
     req->dma_map)))
    tw_osli_dbg_dprintf(1, sc,
     "dmamap_destroy(dma) returned %d",
     error);
  }

 if ((sc->ioctl_tag) && (sc->ioctl_map))
  if ((error = bus_dmamap_destroy(sc->ioctl_tag, sc->ioctl_map)))
   tw_osli_dbg_dprintf(1, sc,
    "dmamap_destroy(ioctl) returned %d", error);


 if (sc->req_ctx_buf)
  free(sc->req_ctx_buf, TW_OSLI_MALLOC_CLASS);

 if (sc->non_dma_mem)
  free(sc->non_dma_mem, TW_OSLI_MALLOC_CLASS);

 if (sc->dma_mem) {
  bus_dmamap_unload(sc->cmd_tag, sc->cmd_map);
  bus_dmamem_free(sc->cmd_tag, sc->dma_mem,
   sc->cmd_map);
 }
 if (sc->cmd_tag)
  if ((error = bus_dma_tag_destroy(sc->cmd_tag)))
   tw_osli_dbg_dprintf(1, sc,
    "dma_tag_destroy(cmd) returned %d", error);

 if (sc->dma_tag)
  if ((error = bus_dma_tag_destroy(sc->dma_tag)))
   tw_osli_dbg_dprintf(1, sc,
    "dma_tag_destroy(dma) returned %d", error);

 if (sc->ioctl_tag)
  if ((error = bus_dma_tag_destroy(sc->ioctl_tag)))
   tw_osli_dbg_dprintf(1, sc,
    "dma_tag_destroy(ioctl) returned %d", error);

 if (sc->parent_tag)
  if ((error = bus_dma_tag_destroy(sc->parent_tag)))
   tw_osli_dbg_dprintf(1, sc,
    "dma_tag_destroy(parent) returned %d", error);



 if ((error = twa_teardown_intr(sc)))
   tw_osli_dbg_dprintf(1, sc,
    "teardown_intr returned %d", error);

 if (sc->irq_res != ((void*)0))
  if ((error = bus_release_resource(sc->bus_dev,
    SYS_RES_IRQ, sc->irq_res_id, sc->irq_res)))
   tw_osli_dbg_dprintf(1, sc,
    "release_resource(irq) returned %d", error);



 if (sc->reg_res != ((void*)0))
  if ((error = bus_release_resource(sc->bus_dev,
    SYS_RES_MEMORY, sc->reg_res_id, sc->reg_res)))
   tw_osli_dbg_dprintf(1, sc,
    "release_resource(io) returned %d", error);



 if (sc->ctrl_dev != (struct cdev *)((void*)0))
  destroy_dev(sc->ctrl_dev);

 if ((error = sysctl_ctx_free(&sc->sysctl_ctxt)))
  tw_osli_dbg_dprintf(1, sc,
   "sysctl_ctx_free returned %d", error);

}
