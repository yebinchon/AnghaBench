
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mrsas_softc {int use_seqnum_jbod_fp; int mrsas_dev; scalar_t__* jbodmap_mem; int * jbodmap_phys_addr; int * jbodmap_dmamap; int * jbodmap_tag; int mrsas_parent_tag; TYPE_2__* ctrl_info; } ;
struct MR_PD_CFG_SEQ_NUM_SYNC {int dummy; } ;
struct MR_PD_CFG_SEQ {int dummy; } ;
struct TYPE_3__ {int useSeqNumJbodFP; } ;
struct TYPE_4__ {TYPE_1__ adapterOperations3; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MAX_PHYSICAL_DEVICES ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,scalar_t__,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (scalar_t__,int) ;
 int device_printf (int ,char*) ;
 int megasas_sync_pd_seq_num (struct mrsas_softc*,int) ;
 int mrsas_addr_cb ;

void
megasas_setup_jbod_map(struct mrsas_softc *sc)
{
 int i;
 uint32_t pd_seq_map_sz;

 pd_seq_map_sz = sizeof(struct MR_PD_CFG_SEQ_NUM_SYNC) +
     (sizeof(struct MR_PD_CFG_SEQ) * (MAX_PHYSICAL_DEVICES - 1));

 if (!sc->ctrl_info->adapterOperations3.useSeqNumJbodFP) {
  sc->use_seqnum_jbod_fp = 0;
  return;
 }
 if (sc->jbodmap_mem[0])
  goto skip_alloc;

 for (i = 0; i < 2; i++) {
  if (bus_dma_tag_create(sc->mrsas_parent_tag,
      4, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      pd_seq_map_sz,
      1,
      pd_seq_map_sz,
      BUS_DMA_ALLOCNOW,
      ((void*)0), ((void*)0),
      &sc->jbodmap_tag[i])) {
   device_printf(sc->mrsas_dev,
       "Cannot allocate jbod map tag.\n");
   return;
  }
  if (bus_dmamem_alloc(sc->jbodmap_tag[i],
      (void **)&sc->jbodmap_mem[i],
      BUS_DMA_NOWAIT, &sc->jbodmap_dmamap[i])) {
   device_printf(sc->mrsas_dev,
       "Cannot allocate jbod map memory.\n");
   return;
  }
  bzero(sc->jbodmap_mem[i], pd_seq_map_sz);

  if (bus_dmamap_load(sc->jbodmap_tag[i], sc->jbodmap_dmamap[i],
      sc->jbodmap_mem[i], pd_seq_map_sz,
      mrsas_addr_cb, &sc->jbodmap_phys_addr[i],
      BUS_DMA_NOWAIT)) {
   device_printf(sc->mrsas_dev, "Cannot load jbod map memory.\n");
   return;
  }
  if (!sc->jbodmap_mem[i]) {
   device_printf(sc->mrsas_dev,
       "Cannot allocate memory for jbod map.\n");
   sc->use_seqnum_jbod_fp = 0;
   return;
  }
 }

skip_alloc:
 if (!megasas_sync_pd_seq_num(sc, 0) &&
     !megasas_sync_pd_seq_num(sc, 1))
  sc->use_seqnum_jbod_fp = 1;
 else
  sc->use_seqnum_jbod_fp = 0;

 device_printf(sc->mrsas_dev, "Jbod map is supported\n");
}
