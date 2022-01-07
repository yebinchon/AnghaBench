
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {TYPE_3__* q; } ;
struct TYPE_4__ {TYPE_3__* q; } ;
struct tws_softc {int obfl_q_overrun; int irqs; scalar_t__ intr_type; int tws_clist; int tws_cdev; int io_lock; int gen_lock; int sim_lock; int q_lock; TYPE_2__ trace_q; TYPE_1__ aen_q; scalar_t__ data_tag; int ioctl_data_map; scalar_t__ ioctl_data_mem; TYPE_3__* scan_ccb; TYPE_3__* sense_bufs; TYPE_3__* reqs; int stats_timer; int reg_res_id; scalar_t__ reg_res; int tws_dev; int mfa_res_id; scalar_t__ mfa_res; scalar_t__ cmd_tag; int cmd_map; scalar_t__ dma_mem; scalar_t__ dma_mem_phys; int * irq_res_id; scalar_t__* irq_res; } ;
typedef int device_t ;
struct TYPE_6__ {int timeout; scalar_t__ dma_map; } ;


 int M_TWS ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TWS_I2O0_HIMASK ;
 int TWS_I2O0_HOBDBC ;
 scalar_t__ TWS_MSI ;
 int TWS_TRACE (struct tws_softc*,char*,int,int ) ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int TWS_UNINIT_START ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 scalar_t__ bus_release_resource (int ,int ,int ,scalar_t__) ;
 int callout_drain (int *) ;
 int destroy_dev (int ) ;
 struct tws_softc* device_get_softc (int ) ;
 int free (TYPE_3__*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_release_msi (int ) ;
 int sysctl_ctx_free (int *) ;
 int tws_cam_detach (struct tws_softc*) ;
 int tws_init_connect (struct tws_softc*,int) ;
 int tws_queue_depth ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_send_event (struct tws_softc*,int ) ;
 int tws_teardown_intr (struct tws_softc*) ;
 int tws_turn_off_interrupts (struct tws_softc*) ;
 int tws_write_reg (struct tws_softc*,int ,int ,int) ;

__attribute__((used)) static int
tws_detach(device_t dev)
{
    struct tws_softc *sc = device_get_softc(dev);
    int i;
    u_int32_t reg;

    TWS_TRACE_DEBUG(sc, "entry", 0, 0);

    mtx_lock(&sc->gen_lock);
    tws_send_event(sc, TWS_UNINIT_START);
    mtx_unlock(&sc->gen_lock);


    tws_turn_off_interrupts(sc);

    tws_write_reg(sc, TWS_I2O0_HOBDBC, ~0, 4);
    reg = tws_read_reg(sc, TWS_I2O0_HIMASK, 4);
    TWS_TRACE_DEBUG(sc, "turn-off-intr", reg, 0);
    sc->obfl_q_overrun = 0;
    tws_init_connect(sc, 1);



    tws_teardown_intr(sc);


    for(i=0;i<sc->irqs;i++) {
        if ( sc->irq_res[i] ){
            if (bus_release_resource(sc->tws_dev,
                     SYS_RES_IRQ, sc->irq_res_id[i], sc->irq_res[i]))
                TWS_TRACE(sc, "bus release irq resource",
                                       i, sc->irq_res_id[i]);
        }
    }
    if ( sc->intr_type == TWS_MSI ) {
        pci_release_msi(sc->tws_dev);
    }

    tws_cam_detach(sc);

    if (sc->dma_mem_phys)
     bus_dmamap_unload(sc->cmd_tag, sc->cmd_map);
    if (sc->dma_mem)
     bus_dmamem_free(sc->cmd_tag, sc->dma_mem, sc->cmd_map);
    if (sc->cmd_tag)
     bus_dma_tag_destroy(sc->cmd_tag);


    if ( sc->mfa_res ){
        if (bus_release_resource(sc->tws_dev,
                 SYS_RES_MEMORY, sc->mfa_res_id, sc->mfa_res))
            TWS_TRACE(sc, "bus release mem resource", 0, sc->mfa_res_id);
    }
    if ( sc->reg_res ){
        if (bus_release_resource(sc->tws_dev,
                 SYS_RES_MEMORY, sc->reg_res_id, sc->reg_res))
            TWS_TRACE(sc, "bus release mem resource", 0, sc->reg_res_id);
    }

    for ( i=0; i< tws_queue_depth; i++) {
     if (sc->reqs[i].dma_map)
      bus_dmamap_destroy(sc->data_tag, sc->reqs[i].dma_map);
     callout_drain(&sc->reqs[i].timeout);
    }

    callout_drain(&sc->stats_timer);
    free(sc->reqs, M_TWS);
    free(sc->sense_bufs, M_TWS);
    free(sc->scan_ccb, M_TWS);
    if (sc->ioctl_data_mem)
            bus_dmamem_free(sc->data_tag, sc->ioctl_data_mem, sc->ioctl_data_map);
    if (sc->data_tag)
     bus_dma_tag_destroy(sc->data_tag);
    free(sc->aen_q.q, M_TWS);
    free(sc->trace_q.q, M_TWS);
    mtx_destroy(&sc->q_lock);
    mtx_destroy(&sc->sim_lock);
    mtx_destroy(&sc->gen_lock);
    mtx_destroy(&sc->io_lock);
    destroy_dev(sc->tws_cdev);
    sysctl_ctx_free(&sc->tws_clist);
    return (0);
}
