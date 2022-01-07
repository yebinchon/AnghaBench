
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;
struct tws_stats {int dummy; } ;
struct tws_softc {int is64bit; void* dma_mem; int dma_mem_phys; int stats; int tws_dev; int ioctl_data_map; int ioctl_data_mem; int data_tag; void* scan_ccb; void* sense_bufs; void* reqs; int io_lock; int parent_tag; int cmd_map; int cmd_tag; scalar_t__ seq_id; } ;
struct tws_sense {int dummy; } ;
struct tws_request {int dummy; } ;
struct tws_command_packet {int dummy; } ;
typedef int bus_addr_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE ;
 int ENOMEM ;
 int FAILURE ;
 int M_TWS ;
 int M_WAITOK ;
 int M_ZERO ;
 int SUCCESS ;
 int TWS_ALIGNMENT ;
 int TWS_BIT1 ;
 int TWS_I2O0_CTL ;
 int TWS_IN_MF_ALIGNMENT ;
 int TWS_MAX_32BIT_SG_ELEMENTS ;
 int TWS_MAX_64BIT_SG_ELEMENTS ;
 int TWS_MAX_IO_SIZE ;
 int TWS_MAX_REQS ;
 int TWS_RESERVED_REQS ;
 int TWS_SECTOR_SIZE ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,int) ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,int*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int * busdma_lock_mutex ;
 int bzero (int *,int) ;
 int device_printf (int ,char*) ;
 void* malloc (int,int ,int) ;
 int tws_ctlr_ready (struct tws_softc*) ;
 int tws_ctlr_reset (struct tws_softc*) ;
 int tws_dmamap_cmds_load_cbfn ;
 int tws_init_aen_q (struct tws_softc*) ;
 int tws_init_qs (struct tws_softc*) ;
 int tws_init_reqs (struct tws_softc*,int) ;
 int tws_queue_depth ;
 int tws_read_reg (struct tws_softc*,int,int) ;
 int tws_turn_off_interrupts (struct tws_softc*) ;
 int tws_use_32bit_sgls ;
 int tws_write_reg (struct tws_softc*,int,int,int) ;

__attribute__((used)) static int
tws_init(struct tws_softc *sc)
{

    u_int32_t max_sg_elements;
    u_int32_t dma_mem_size;
    int error;
    u_int32_t reg;

    sc->seq_id = 0;
    if ( tws_queue_depth > TWS_MAX_REQS )
        tws_queue_depth = TWS_MAX_REQS;
    if (tws_queue_depth < TWS_RESERVED_REQS+1)
        tws_queue_depth = TWS_RESERVED_REQS+1;
    sc->is64bit = (sizeof(bus_addr_t) == 8) ? 1 : 0;
    max_sg_elements = (sc->is64bit && !tws_use_32bit_sgls) ?
                                 TWS_MAX_64BIT_SG_ELEMENTS :
                                 TWS_MAX_32BIT_SG_ELEMENTS;
    dma_mem_size = (sizeof(struct tws_command_packet) * tws_queue_depth) +
                             (TWS_SECTOR_SIZE) ;
    if ( bus_dma_tag_create(bus_get_dma_tag(sc->tws_dev),
                            TWS_ALIGNMENT,
                            0,
                            BUS_SPACE_MAXADDR_32BIT,
                            BUS_SPACE_MAXADDR,
                            ((void*)0), ((void*)0),
                            BUS_SPACE_MAXSIZE,
                            max_sg_elements,
                            BUS_SPACE_MAXSIZE,
                            0,
                            ((void*)0), ((void*)0),
                            &sc->parent_tag
                           )) {
        TWS_TRACE_DEBUG(sc, "DMA parent tag Create fail", max_sg_elements,
                                                    sc->is64bit);
        return(ENOMEM);
    }




    if ( bus_dma_tag_create(sc->parent_tag,
                            TWS_IN_MF_ALIGNMENT,
                            0,
                            BUS_SPACE_MAXADDR_32BIT,
                            BUS_SPACE_MAXADDR,
                            ((void*)0), ((void*)0),
                            dma_mem_size,
                            1,
                            BUS_SPACE_MAXSIZE,
                            0,
                            ((void*)0), ((void*)0),
                            &sc->cmd_tag
                           )) {
        TWS_TRACE_DEBUG(sc, "DMA cmd tag Create fail", max_sg_elements, sc->is64bit);
        return(ENOMEM);
    }

    if (bus_dmamem_alloc(sc->cmd_tag, &sc->dma_mem,
                    BUS_DMA_NOWAIT, &sc->cmd_map)) {
        TWS_TRACE_DEBUG(sc, "DMA mem alloc fail", max_sg_elements, sc->is64bit);
        return(ENOMEM);
    }


    sc->dma_mem_phys=0;
    error = bus_dmamap_load(sc->cmd_tag, sc->cmd_map, sc->dma_mem,
                    dma_mem_size, tws_dmamap_cmds_load_cbfn,
                    &sc->dma_mem_phys, 0);





    if (bus_dma_tag_create(sc->parent_tag,
                           TWS_ALIGNMENT,
                           0,
                           BUS_SPACE_MAXADDR_32BIT,
                           BUS_SPACE_MAXADDR,
                           ((void*)0), ((void*)0),
                           TWS_MAX_IO_SIZE,
                           max_sg_elements,
                           TWS_MAX_IO_SIZE,
                           BUS_DMA_ALLOCNOW,
                           busdma_lock_mutex,
                           &sc->io_lock,
                           &sc->data_tag )) {
        TWS_TRACE_DEBUG(sc, "DMA cmd tag Create fail", max_sg_elements, sc->is64bit);
        return(ENOMEM);
    }

    sc->reqs = malloc(sizeof(struct tws_request) * tws_queue_depth, M_TWS,
                      M_WAITOK | M_ZERO);
    sc->sense_bufs = malloc(sizeof(struct tws_sense) * tws_queue_depth, M_TWS,
                      M_WAITOK | M_ZERO);
    sc->scan_ccb = malloc(sizeof(union ccb), M_TWS, M_WAITOK | M_ZERO);
    if (bus_dmamem_alloc(sc->data_tag, (void **)&sc->ioctl_data_mem,
            (BUS_DMA_NOWAIT | BUS_DMA_ZERO), &sc->ioctl_data_map)) {
        device_printf(sc->tws_dev, "Cannot allocate ioctl data mem\n");
        return(ENOMEM);
    }

    if ( !tws_ctlr_ready(sc) )
        if( !tws_ctlr_reset(sc) )
            return(FAILURE);

    bzero(&sc->stats, sizeof(struct tws_stats));
    tws_init_qs(sc);
    tws_turn_off_interrupts(sc);
    TWS_TRACE_DEBUG(sc, "dma_mem_phys", sc->dma_mem_phys, TWS_I2O0_CTL);
    if ( tws_init_reqs(sc, dma_mem_size) == FAILURE )
        return(FAILURE);
    if ( tws_init_aen_q(sc) == FAILURE )
        return(FAILURE);

    return(SUCCESS);

}
