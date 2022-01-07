
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;
typedef void* uint32_t ;
struct nvme_tracker {int cid; size_t* prp; size_t prp_bus_addr; struct nvme_qpair* qpair; int timer; int payload_dma_map; } ;
struct nvme_qpair {int vector; int id; int num_entries; size_t num_trackers; int rid; size_t cmd_bus_addr; size_t cpl_bus_addr; int domain; void* act_tr; int free_tr; int dma_tag_payload; int queued_req; int outstanding_tr; void* cq_hdbl_off; void* sq_tdbl_off; struct nvme_completion* cpl; struct nvme_command* cmd; scalar_t__ num_failures; scalar_t__ num_retries; scalar_t__ num_intr_handler_calls; scalar_t__ num_cmds; int queuemem_map; int dma_tag; int lock; int tag; int res; struct nvme_controller* ctrlr; } ;
struct nvme_controller {int dstrd; int dev; scalar_t__ msix_enabled; } ;
struct nvme_completion {int dummy; } ;
struct nvme_command {int dummy; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int DOMAINSET_PREF (int ) ;
 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int M_NVME ;
 int M_WAITOK ;
 int M_ZERO ;
 int NVME_MAX_PRP_LIST_ENTRIES ;
 int NVME_MAX_XFER_SIZE ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int STAILQ_INIT (int *) ;
 int SYS_RES_IRQ ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct nvme_tracker*,int ) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_describe_intr (int ,int ,int ,char*,...) ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_dma_tag_set_domain (int ,int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int *,size_t,int ,size_t*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct nvme_qpair*,int *) ;
 int callout_init (int *,int) ;
 int * doorbell ;
 void* malloc_domainset (int,int ,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 void* nvme_mmio_offsetof (int ) ;
 int nvme_printf (struct nvme_controller*,char*,...) ;
 int nvme_qpair_destroy (struct nvme_qpair*) ;
 int nvme_qpair_msix_handler ;
 int nvme_single_map ;
 size_t roundup2 (uintptr_t,int) ;
 int tailq ;
 scalar_t__ trunc_page (size_t) ;

int
nvme_qpair_construct(struct nvme_qpair *qpair,
    uint32_t num_entries, uint32_t num_trackers,
    struct nvme_controller *ctrlr)
{
 struct nvme_tracker *tr;
 size_t cmdsz, cplsz, prpsz, allocsz, prpmemsz;
 uint64_t queuemem_phys, prpmem_phys, list_phys;
 uint8_t *queuemem, *prpmem, *prp_list;
 int i, err;

 qpair->vector = ctrlr->msix_enabled ? qpair->id : 0;
 qpair->num_entries = num_entries;
 qpair->num_trackers = num_trackers;
 qpair->ctrlr = ctrlr;

 if (ctrlr->msix_enabled) {





  qpair->rid = qpair->vector + 1;

  qpair->res = bus_alloc_resource_any(ctrlr->dev, SYS_RES_IRQ,
      &qpair->rid, RF_ACTIVE);
  bus_setup_intr(ctrlr->dev, qpair->res,
      INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0),
      nvme_qpair_msix_handler, qpair, &qpair->tag);
  if (qpair->id == 0) {
   bus_describe_intr(ctrlr->dev, qpair->res, qpair->tag,
       "admin");
  } else {
   bus_describe_intr(ctrlr->dev, qpair->res, qpair->tag,
       "io%d", qpair->id - 1);
  }
 }

 mtx_init(&qpair->lock, "nvme qpair lock", ((void*)0), MTX_DEF);


 err = bus_dma_tag_create(bus_get_dma_tag(ctrlr->dev),
     4, PAGE_SIZE, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), NVME_MAX_XFER_SIZE,
     (NVME_MAX_XFER_SIZE/PAGE_SIZE)+1, PAGE_SIZE, 0,
     ((void*)0), ((void*)0), &qpair->dma_tag_payload);
 if (err != 0) {
  nvme_printf(ctrlr, "payload tag create failed %d\n", err);
  goto out;
 }





 cmdsz = qpair->num_entries * sizeof(struct nvme_command);
 cmdsz = roundup2(cmdsz, PAGE_SIZE);
 cplsz = qpair->num_entries * sizeof(struct nvme_completion);
 cplsz = roundup2(cplsz, PAGE_SIZE);
 prpsz = sizeof(uint64_t) * NVME_MAX_PRP_LIST_ENTRIES;;
 prpmemsz = qpair->num_trackers * prpsz;
 allocsz = cmdsz + cplsz + prpmemsz;

 err = bus_dma_tag_create(bus_get_dma_tag(ctrlr->dev),
     PAGE_SIZE, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     allocsz, 1, allocsz, 0, ((void*)0), ((void*)0), &qpair->dma_tag);
 if (err != 0) {
  nvme_printf(ctrlr, "tag create failed %d\n", err);
  goto out;
 }
 bus_dma_tag_set_domain(qpair->dma_tag, qpair->domain);

 if (bus_dmamem_alloc(qpair->dma_tag, (void **)&queuemem,
     BUS_DMA_NOWAIT, &qpair->queuemem_map)) {
  nvme_printf(ctrlr, "failed to alloc qpair memory\n");
  goto out;
 }

 if (bus_dmamap_load(qpair->dma_tag, qpair->queuemem_map,
     queuemem, allocsz, nvme_single_map, &queuemem_phys, 0) != 0) {
  nvme_printf(ctrlr, "failed to load qpair memory\n");
  goto out;
 }

 qpair->num_cmds = 0;
 qpair->num_intr_handler_calls = 0;
 qpair->num_retries = 0;
 qpair->num_failures = 0;
 qpair->cmd = (struct nvme_command *)queuemem;
 qpair->cpl = (struct nvme_completion *)(queuemem + cmdsz);
 prpmem = (uint8_t *)(queuemem + cmdsz + cplsz);
 qpair->cmd_bus_addr = queuemem_phys;
 qpair->cpl_bus_addr = queuemem_phys + cmdsz;
 prpmem_phys = queuemem_phys + cmdsz + cplsz;






 qpair->sq_tdbl_off = nvme_mmio_offsetof(doorbell[0]) +
     (qpair->id << (ctrlr->dstrd + 1));
 qpair->cq_hdbl_off = nvme_mmio_offsetof(doorbell[0]) +
     (qpair->id << (ctrlr->dstrd + 1)) + (1 << ctrlr->dstrd);

 TAILQ_INIT(&qpair->free_tr);
 TAILQ_INIT(&qpair->outstanding_tr);
 STAILQ_INIT(&qpair->queued_req);

 list_phys = prpmem_phys;
 prp_list = prpmem;
 for (i = 0; i < qpair->num_trackers; i++) {

  if (list_phys + prpsz > prpmem_phys + prpmemsz) {
   qpair->num_trackers = i;
   break;
  }





  if (trunc_page(list_phys) !=
      trunc_page(list_phys + prpsz - 1)) {
   list_phys = roundup2(list_phys, PAGE_SIZE);
   prp_list =
       (uint8_t *)roundup2((uintptr_t)prp_list, PAGE_SIZE);
  }

  tr = malloc_domainset(sizeof(*tr), M_NVME,
      DOMAINSET_PREF(qpair->domain), M_ZERO | M_WAITOK);
  bus_dmamap_create(qpair->dma_tag_payload, 0,
      &tr->payload_dma_map);
  callout_init(&tr->timer, 1);
  tr->cid = i;
  tr->qpair = qpair;
  tr->prp = (uint64_t *)prp_list;
  tr->prp_bus_addr = list_phys;
  TAILQ_INSERT_HEAD(&qpair->free_tr, tr, tailq);
  list_phys += prpsz;
  prp_list += prpsz;
 }

 if (qpair->num_trackers == 0) {
  nvme_printf(ctrlr, "failed to allocate enough trackers\n");
  goto out;
 }

 qpair->act_tr = malloc_domainset(sizeof(struct nvme_tracker *) *
     qpair->num_entries, M_NVME, DOMAINSET_PREF(qpair->domain),
     M_ZERO | M_WAITOK);
 return (0);

out:
 nvme_qpair_destroy(qpair);
 return (ENOMEM);
}
