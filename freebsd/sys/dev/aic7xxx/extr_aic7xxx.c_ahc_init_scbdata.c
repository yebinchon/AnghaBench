
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_data {int dummy; } ;
struct scb_data {scalar_t__ maxhscbs; scalar_t__ numscbs; struct scb* hscbs; int init_level; int sg_dmat; int sense_busaddr; struct scb* sense; int sense_dmamap; int sense_dmat; int hscb_busaddr; int hscb_dmamap; int hscb_dmat; struct scb* scbarray; int sg_maps; int free_scbs; } ;
struct scb {int dummy; } ;
struct hardware_scb {int dummy; } ;
struct ahc_softc {int next_queued_scb; int parent_dmat; struct scb_data* scb_data; } ;


 int AHC_SCB_MAX_ALLOC ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int SLIST_INIT (int *) ;
 scalar_t__ ahc_alloc_scbs (struct ahc_softc*) ;
 int ahc_dmamap_cb ;
 int ahc_get_scb (struct ahc_softc*) ;
 char* ahc_name (struct ahc_softc*) ;
 scalar_t__ ahc_probe_scbs (struct ahc_softc*) ;
 scalar_t__ aic_dma_tag_create (struct ahc_softc*,int ,int,scalar_t__,scalar_t__,int ,int *,int *,int,int,int ,int ,int *) ;
 int aic_dmamap_load (struct ahc_softc*,int ,int ,struct scb*,int,int ,int *,int ) ;
 scalar_t__ aic_dmamem_alloc (struct ahc_softc*,int ,void**,int,int *) ;
 scalar_t__ malloc (int,int ,int ) ;
 int memset (struct scb*,int ,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
ahc_init_scbdata(struct ahc_softc *ahc)
{
 struct scb_data *scb_data;

 scb_data = ahc->scb_data;
 SLIST_INIT(&scb_data->free_scbs);
 SLIST_INIT(&scb_data->sg_maps);


 scb_data->scbarray =
     (struct scb *)malloc(sizeof(struct scb) * AHC_SCB_MAX_ALLOC,
     M_DEVBUF, M_NOWAIT);
 if (scb_data->scbarray == ((void*)0))
  return (ENOMEM);
 memset(scb_data->scbarray, 0, sizeof(struct scb) * AHC_SCB_MAX_ALLOC);



 scb_data->maxhscbs = ahc_probe_scbs(ahc);
 if (ahc->scb_data->maxhscbs == 0) {
  printf("%s: No SCB space found\n", ahc_name(ahc));
  return (ENXIO);
 }
 if (aic_dma_tag_create(ahc, ahc->parent_dmat, 1,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          AHC_SCB_MAX_ALLOC * sizeof(struct hardware_scb),
                       1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &scb_data->hscb_dmat) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 if (aic_dmamem_alloc(ahc, scb_data->hscb_dmat,
        (void **)&scb_data->hscbs,
        BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
        &scb_data->hscb_dmamap) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 aic_dmamap_load(ahc, scb_data->hscb_dmat, scb_data->hscb_dmamap,
   scb_data->hscbs,
   AHC_SCB_MAX_ALLOC * sizeof(struct hardware_scb),
   ahc_dmamap_cb, &scb_data->hscb_busaddr, 0);

 scb_data->init_level++;


 if (aic_dma_tag_create(ahc, ahc->parent_dmat, 1,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          AHC_SCB_MAX_ALLOC * sizeof(struct scsi_sense_data),
                       1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &scb_data->sense_dmat) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 if (aic_dmamem_alloc(ahc, scb_data->sense_dmat,
        (void **)&scb_data->sense,
        BUS_DMA_NOWAIT, &scb_data->sense_dmamap) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 aic_dmamap_load(ahc, scb_data->sense_dmat, scb_data->sense_dmamap,
   scb_data->sense,
   AHC_SCB_MAX_ALLOC * sizeof(struct scsi_sense_data),
   ahc_dmamap_cb, &scb_data->sense_busaddr, 0);

 scb_data->init_level++;


 if (aic_dma_tag_create(ahc, ahc->parent_dmat, 8,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          PAGE_SIZE, 1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &scb_data->sg_dmat) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 memset(scb_data->hscbs, 0,
        AHC_SCB_MAX_ALLOC * sizeof(struct hardware_scb));
 while (ahc_alloc_scbs(ahc) != 0)
  ;

 if (scb_data->numscbs == 0) {
  printf("%s: ahc_init_scbdata - "
         "Unable to allocate initial scbs\n",
         ahc_name(ahc));
  goto error_exit;
 }




 ahc->next_queued_scb = ahc_get_scb(ahc);




 return (0);

error_exit:

 return (ENOMEM);
}
