
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int16_t ;
struct cam_devq {int dummy; } ;
typedef int device_t ;
struct TYPE_6__ {int * psim; int * irq; scalar_t__ ih; scalar_t__ buffer_dmat; scalar_t__ sense_dmat; int sense_dmamap; scalar_t__ sense_buffers; scalar_t__ srb_dmat; int srb_dmamap; scalar_t__ pFreeSRB; scalar_t__ sg_dmat; int * iores; int ppath; } ;
typedef TYPE_1__* PACB ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENXIO ;
 int Giant ;
 int INTR_TYPE_CAM ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TRM_MAX_START_JOB ;
 int TRM_MAX_TAGS_CMD_QUEUE ;
 int TRUE ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int *,int ,TYPE_1__*,scalar_t__*) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int * cam_sim_alloc (int ,int ,char*,TYPE_1__*,int,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int pci_get_devid (int ) ;
 int printf (char*,int) ;
 int trm_Interrupt ;
 int trm_action ;
 int trm_destroySRB (TYPE_1__*) ;
 TYPE_1__* trm_init (int ,int ) ;
 int trm_poll ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
trm_attach(device_t dev)
{
 struct cam_devq *device_Q;
 u_long device_id;
 PACB pACB = 0;
 int rid = 0;
 int unit = device_get_unit(dev);

 device_id = pci_get_devid(dev);



 if ((pACB = trm_init((u_int16_t) unit,
         dev)) == ((void*)0)) {
  printf("trm%d: trm_init error!\n",unit);
  return (ENXIO);
 }







 pACB->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
     if (pACB->irq == ((void*)0) ||
     bus_setup_intr(dev, pACB->irq,
     INTR_TYPE_CAM, ((void*)0), trm_Interrupt, pACB, &pACB->ih)) {
  printf("trm%d: register Interrupt handler error!\n", unit);
  goto bad;
 }
 device_Q = cam_simq_alloc(TRM_MAX_START_JOB);
 if (device_Q == ((void*)0)){
  printf("trm%d: device_Q == NULL !\n",unit);
  goto bad;
 }
 pACB->psim = cam_sim_alloc(trm_action,
     trm_poll,
     "trm",
     pACB,
     unit,
     &Giant,
     1,
     TRM_MAX_TAGS_CMD_QUEUE,
     device_Q);
 if (pACB->psim == ((void*)0)) {
  printf("trm%d: SIM allocate fault !\n",unit);
  cam_simq_free(device_Q);
  goto bad;
 }
 if (xpt_bus_register(pACB->psim, dev, 0) != CAM_SUCCESS) {
  printf("trm%d: xpt_bus_register fault !\n",unit);
  goto bad;
 }
 if (xpt_create_path(&pACB->ppath,
       ((void*)0),
       cam_sim_path(pACB->psim),
       CAM_TARGET_WILDCARD,
       CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  printf("trm%d: xpt_create_path fault !\n",unit);
  xpt_bus_deregister(cam_sim_path(pACB->psim));
  goto bad;
 }
 return (0);
bad:
 if (pACB->iores)
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(0),
      pACB->iores);
 if (pACB->sg_dmat) {
  trm_destroySRB(pACB);
  bus_dma_tag_destroy(pACB->sg_dmat);
 }

 if (pACB->pFreeSRB) {
  bus_dmamap_unload(pACB->srb_dmat, pACB->srb_dmamap);
  bus_dmamem_free(pACB->srb_dmat, pACB->pFreeSRB,
      pACB->srb_dmamap);
 }
 if (pACB->srb_dmat)
  bus_dma_tag_destroy(pACB->srb_dmat);
 if (pACB->sense_buffers) {
      bus_dmamap_unload(pACB->sense_dmat, pACB->sense_dmamap);
    bus_dmamem_free(pACB->sense_dmat, pACB->sense_buffers,
        pACB->sense_dmamap);
 }
 if (pACB->sense_dmat)
  bus_dma_tag_destroy(pACB->sense_dmat);
 if (pACB->buffer_dmat)
  bus_dma_tag_destroy(pACB->buffer_dmat);
 if (pACB->ih)
  bus_teardown_intr(dev, pACB->irq, pACB->ih);
 if (pACB->irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, pACB->irq);
 if (pACB->psim)
  cam_sim_free(pACB->psim, TRUE);

 return (ENXIO);

}
