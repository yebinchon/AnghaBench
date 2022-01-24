#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int u_int32_t ;
struct tws_stats {int dummy; } ;
struct tws_softc {int is64bit; void* dma_mem; int dma_mem_phys; int /*<<< orphan*/  stats; int /*<<< orphan*/  tws_dev; int /*<<< orphan*/  ioctl_data_map; int /*<<< orphan*/  ioctl_data_mem; int /*<<< orphan*/  data_tag; void* scan_ccb; void* sense_bufs; void* reqs; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  parent_tag; int /*<<< orphan*/  cmd_map; int /*<<< orphan*/  cmd_tag; scalar_t__ seq_id; } ;
struct tws_sense {int dummy; } ;
struct tws_request {int dummy; } ;
struct tws_command_packet {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE ; 
 int ENOMEM ; 
 int FAILURE ; 
 int /*<<< orphan*/  M_TWS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TWS_ALIGNMENT ; 
 int TWS_BIT1 ; 
 int TWS_I2O0_CTL ; 
 int /*<<< orphan*/  TWS_IN_MF_ALIGNMENT ; 
 int TWS_MAX_32BIT_SG_ELEMENTS ; 
 int TWS_MAX_64BIT_SG_ELEMENTS ; 
 int TWS_MAX_IO_SIZE ; 
 int TWS_MAX_REQS ; 
 int TWS_RESERVED_REQS ; 
 int TWS_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tws_softc*) ; 
 int /*<<< orphan*/  tws_dmamap_cmds_load_cbfn ; 
 int FUNC10 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct tws_softc*) ; 
 int FUNC12 (struct tws_softc*,int) ; 
 int tws_queue_depth ; 
 int FUNC13 (struct tws_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tws_softc*) ; 
 int /*<<< orphan*/  tws_use_32bit_sgls ; 
 int /*<<< orphan*/  FUNC15 (struct tws_softc*,int,int,int) ; 

__attribute__((used)) static int
FUNC16(struct tws_softc *sc)
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
    sc->is64bit = (sizeof(bus_addr_t) == 8) ? true : false;
    max_sg_elements = (sc->is64bit && !tws_use_32bit_sgls) ? 
                                 TWS_MAX_64BIT_SG_ELEMENTS : 
                                 TWS_MAX_32BIT_SG_ELEMENTS;
    dma_mem_size = (sizeof(struct tws_command_packet) * tws_queue_depth) +
                             (TWS_SECTOR_SIZE) ;
    if ( FUNC1(FUNC4(sc->tws_dev), /* PCI parent */ 
                            TWS_ALIGNMENT,           /* alignment */
                            0,                       /* boundary */
                            BUS_SPACE_MAXADDR_32BIT, /* lowaddr */
                            BUS_SPACE_MAXADDR,       /* highaddr */
                            NULL, NULL,              /* filter, filterarg */
                            BUS_SPACE_MAXSIZE,       /* maxsize */
                            max_sg_elements,         /* numsegs */
                            BUS_SPACE_MAXSIZE,       /* maxsegsize */
                            0,                       /* flags */
                            NULL, NULL,              /* lockfunc, lockfuncarg */
                            &sc->parent_tag          /* tag */
                           )) {
        FUNC0(sc, "DMA parent tag Create fail", max_sg_elements, 
                                                    sc->is64bit);
        return(ENOMEM);
    }
    /* In bound message frame requires 16byte alignment.
     * Outbound MF's can live with 4byte alignment - for now just 
     * use 16 for both.
     */
    if ( FUNC1(sc->parent_tag,       /* parent */          
                            TWS_IN_MF_ALIGNMENT,  /* alignment */
                            0,                    /* boundary */
                            BUS_SPACE_MAXADDR_32BIT, /* lowaddr */
                            BUS_SPACE_MAXADDR,    /* highaddr */
                            NULL, NULL,           /* filter, filterarg */
                            dma_mem_size,         /* maxsize */
                            1,                    /* numsegs */
                            BUS_SPACE_MAXSIZE,    /* maxsegsize */
                            0,                    /* flags */
                            NULL, NULL,           /* lockfunc, lockfuncarg */
                            &sc->cmd_tag          /* tag */
                           )) {
        FUNC0(sc, "DMA cmd tag Create fail", max_sg_elements, sc->is64bit);
        return(ENOMEM);
    }

    if (FUNC3(sc->cmd_tag, &sc->dma_mem,
                    BUS_DMA_NOWAIT, &sc->cmd_map)) {
        FUNC0(sc, "DMA mem alloc fail", max_sg_elements, sc->is64bit);
        return(ENOMEM);
    }

    /* if bus_dmamem_alloc succeeds then bus_dmamap_load will succeed */
    sc->dma_mem_phys=0;
    error = FUNC2(sc->cmd_tag, sc->cmd_map, sc->dma_mem,
                    dma_mem_size, tws_dmamap_cmds_load_cbfn,
                    &sc->dma_mem_phys, 0);

   /*
    * Create a dma tag for data buffers; size will be the maximum
    * possible I/O size (128kB).
    */
    if (FUNC1(sc->parent_tag,         /* parent */
                           TWS_ALIGNMENT,          /* alignment */
                           0,                      /* boundary */
                           BUS_SPACE_MAXADDR_32BIT,/* lowaddr */
                           BUS_SPACE_MAXADDR,      /* highaddr */
                           NULL, NULL,             /* filter, filterarg */
                           TWS_MAX_IO_SIZE,        /* maxsize */
                           max_sg_elements,        /* nsegments */
                           TWS_MAX_IO_SIZE,        /* maxsegsize */
                           BUS_DMA_ALLOCNOW,       /* flags */
                           busdma_lock_mutex,      /* lockfunc */
                           &sc->io_lock,           /* lockfuncarg */
                           &sc->data_tag           /* tag */)) {
        FUNC0(sc, "DMA cmd tag Create fail", max_sg_elements, sc->is64bit);
        return(ENOMEM);
    }

    sc->reqs = FUNC7(sizeof(struct tws_request) * tws_queue_depth, M_TWS,
                      M_WAITOK | M_ZERO);
    sc->sense_bufs = FUNC7(sizeof(struct tws_sense) * tws_queue_depth, M_TWS,
                      M_WAITOK | M_ZERO);
    sc->scan_ccb = FUNC7(sizeof(union ccb), M_TWS, M_WAITOK | M_ZERO);
    if (FUNC3(sc->data_tag, (void **)&sc->ioctl_data_mem,
            (BUS_DMA_NOWAIT | BUS_DMA_ZERO), &sc->ioctl_data_map)) {
        FUNC6(sc->tws_dev, "Cannot allocate ioctl data mem\n");
        return(ENOMEM);
    }

    if ( !FUNC8(sc) )
        if( !FUNC9(sc) )
            return(FAILURE);
    
    FUNC5(&sc->stats, sizeof(struct tws_stats));
    FUNC11(sc);
    FUNC14(sc);

    /* 
     * enable pull mode by setting bit1 .
     * setting bit0 to 1 will enable interrupt coalesing 
     * will revisit. 
     */

#ifdef TWS_PULL_MODE_ENABLE

    reg = tws_read_reg(sc, TWS_I2O0_CTL, 4);
    TWS_TRACE_DEBUG(sc, "i20 ctl", reg, TWS_I2O0_CTL);
    tws_write_reg(sc, TWS_I2O0_CTL, reg | TWS_BIT1, 4);

#endif

    FUNC0(sc, "dma_mem_phys", sc->dma_mem_phys, TWS_I2O0_CTL);
    if ( FUNC12(sc, dma_mem_size) == FAILURE )
        return(FAILURE);
    if ( FUNC10(sc) == FAILURE )
        return(FAILURE);

    return(SUCCESS);
    
}