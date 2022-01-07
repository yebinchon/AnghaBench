
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ciss_softc {int ciss_max_requests; int ciss_cycle; int ciss_reply_phys; scalar_t__ ciss_rqidx; int ciss_reply; int ciss_reply_map; int ciss_reply_dmat; int ciss_parent_dmat; struct ciss_perf_config* ciss_perf; } ;
struct ciss_sg_entry {int dummy; } ;
struct ciss_perf_config {int* fetch_count; int rq_size; int rq_count; TYPE_1__* rq; scalar_t__ rq_bank_lo; scalar_t__ rq_bank_hi; } ;
struct ciss_command {int dummy; } ;
struct TYPE_2__ {int rq_addr_hi; int rq_addr_lo; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int CISS_COMMAND_ALLOC_SIZE ;
 size_t CISS_SG_FETCH_1 ;
 size_t CISS_SG_FETCH_16 ;
 size_t CISS_SG_FETCH_2 ;
 size_t CISS_SG_FETCH_32 ;
 size_t CISS_SG_FETCH_4 ;
 size_t CISS_SG_FETCH_8 ;
 size_t CISS_SG_FETCH_MAX ;
 size_t CISS_SG_FETCH_NONE ;
 int ENOMEM ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (int ,int) ;
 int ciss_command_map_helper ;
 int ciss_printf (struct ciss_softc*,char*) ;

__attribute__((used)) static int
ciss_init_perf(struct ciss_softc *sc)
{
    struct ciss_perf_config *pc = sc->ciss_perf;
    int reply_size;




    reply_size = sizeof(uint64_t) * sc->ciss_max_requests;
    if (bus_dma_tag_create(sc->ciss_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      reply_size, 1,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0), ((void*)0),
      &sc->ciss_reply_dmat)) {
 ciss_printf(sc, "can't allocate reply DMA tag\n");
 return(ENOMEM);
    }



    if (bus_dmamem_alloc(sc->ciss_reply_dmat, (void **)&sc->ciss_reply,
    BUS_DMA_NOWAIT, &sc->ciss_reply_map)) {
 ciss_printf(sc, "can't allocate reply memory\n");
 return(ENOMEM);
    }
    bus_dmamap_load(sc->ciss_reply_dmat, sc->ciss_reply_map, sc->ciss_reply,
      reply_size, ciss_command_map_helper, &sc->ciss_reply_phys, 0);
    bzero(sc->ciss_reply, reply_size);

    sc->ciss_cycle = 0x1;
    sc->ciss_rqidx = 0;
    pc->fetch_count[CISS_SG_FETCH_NONE] = (sizeof(struct ciss_command) + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_1] =
 (sizeof(struct ciss_command) + sizeof(struct ciss_sg_entry) * 1 + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_2] =
 (sizeof(struct ciss_command) + sizeof(struct ciss_sg_entry) * 2 + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_4] =
 (sizeof(struct ciss_command) + sizeof(struct ciss_sg_entry) * 4 + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_8] =
 (sizeof(struct ciss_command) + sizeof(struct ciss_sg_entry) * 8 + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_16] =
 (sizeof(struct ciss_command) + sizeof(struct ciss_sg_entry) * 16 + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_32] =
 (sizeof(struct ciss_command) + sizeof(struct ciss_sg_entry) * 32 + 15) / 16;
    pc->fetch_count[CISS_SG_FETCH_MAX] = (CISS_COMMAND_ALLOC_SIZE + 15) / 16;

    pc->rq_size = sc->ciss_max_requests;
    pc->rq_count = 1;
    pc->rq_bank_hi = 0;
    pc->rq_bank_lo = 0;
    pc->rq[0].rq_addr_hi = 0x0;
    pc->rq[0].rq_addr_lo = sc->ciss_reply_phys;

    return(0);
}
