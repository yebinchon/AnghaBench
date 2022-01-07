
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb_data {scalar_t__ maxhscbs; scalar_t__ numscbs; int init_level; int sense_dmat; int sg_dmat; int hscb_dmat; int sense_maps; int sg_maps; int hscb_maps; int any_dev_free_scb_list; int * free_scb_lists; int free_scbs; } ;
struct ahd_softc {int parent_dmat; struct scb_data scb_data; } ;


 int AHD_FATAL_ERROR (struct ahd_softc*) ;
 int AHD_NUM_LUNS_NONPKT ;
 int AHD_NUM_TARGETS ;
 int AHD_SHOW_MEMORY ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int ENXIO ;
 int LIST_INIT (int *) ;
 int PAGE_SIZE ;
 int SLIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 scalar_t__ ahd_alloc_scbs (struct ahd_softc*) ;
 int ahd_debug ;
 int ahd_initialize_hscbs (struct ahd_softc*) ;
 char* ahd_name (struct ahd_softc*) ;
 scalar_t__ ahd_probe_scbs (struct ahd_softc*) ;
 int ahd_sglist_allocsize (struct ahd_softc*) ;
 scalar_t__ aic_dma_tag_create (struct ahd_softc*,int ,int,scalar_t__,scalar_t__,int ,int *,int *,int,int,int ,int ,int *) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static int
ahd_init_scbdata(struct ahd_softc *ahd)
{
 struct scb_data *scb_data;
 int i;

 scb_data = &ahd->scb_data;
 TAILQ_INIT(&scb_data->free_scbs);
 for (i = 0; i < AHD_NUM_TARGETS * AHD_NUM_LUNS_NONPKT; i++)
  LIST_INIT(&scb_data->free_scb_lists[i]);
 LIST_INIT(&scb_data->any_dev_free_scb_list);
 SLIST_INIT(&scb_data->hscb_maps);
 SLIST_INIT(&scb_data->sg_maps);
 SLIST_INIT(&scb_data->sense_maps);


 scb_data->maxhscbs = ahd_probe_scbs(ahd);
 if (scb_data->maxhscbs == 0) {
  printf("%s: No SCB space found\n", ahd_name(ahd));
  AHD_FATAL_ERROR(ahd);
  return (ENXIO);
 }

 ahd_initialize_hscbs(ahd);
 if (aic_dma_tag_create(ahd, ahd->parent_dmat, 1,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          PAGE_SIZE, 1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &scb_data->hscb_dmat) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 if (aic_dma_tag_create(ahd, ahd->parent_dmat, 8,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          ahd_sglist_allocsize(ahd), 1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &scb_data->sg_dmat) != 0) {
  goto error_exit;
 }






 scb_data->init_level++;


 if (aic_dma_tag_create(ahd, ahd->parent_dmat, 1,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          PAGE_SIZE, 1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &scb_data->sense_dmat) != 0) {
  goto error_exit;
 }

 scb_data->init_level++;


 while (ahd_alloc_scbs(ahd) != 0)
  ;

 if (scb_data->numscbs == 0) {
  printf("%s: ahd_init_scbdata - "
         "Unable to allocate initial scbs\n",
         ahd_name(ahd));
  goto error_exit;
 }




 return (0);

error_exit:

 return (ENOMEM);
}
