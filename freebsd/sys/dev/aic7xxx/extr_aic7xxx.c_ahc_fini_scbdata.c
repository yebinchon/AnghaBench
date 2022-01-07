
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_map_node {int sg_dmamap; int sg_vaddr; } ;
struct scb_data {int init_level; struct sg_map_node* scbarray; int hscb_dmat; int hscb_dmamap; int hscbs; int sense_dmat; int sense_dmamap; int sense; int sg_dmat; int sg_maps; } ;
struct ahc_softc {struct scb_data* scb_data; } ;


 int M_DEVBUF ;
 struct sg_map_node* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int aic_dma_tag_destroy (struct ahc_softc*,int ) ;
 int aic_dmamap_unload (struct ahc_softc*,int ,int ) ;
 int aic_dmamem_free (struct ahc_softc*,int ,int ,int ) ;
 int free (struct sg_map_node*,int ) ;
 int links ;

__attribute__((used)) static void
ahc_fini_scbdata(struct ahc_softc *ahc)
{
 struct scb_data *scb_data;

 scb_data = ahc->scb_data;
 if (scb_data == ((void*)0))
  return;

 switch (scb_data->init_level) {
 default:
 case 7:
 {
  struct sg_map_node *sg_map;

  while ((sg_map = SLIST_FIRST(&scb_data->sg_maps))!= ((void*)0)) {
   SLIST_REMOVE_HEAD(&scb_data->sg_maps, links);
   aic_dmamap_unload(ahc, scb_data->sg_dmat,
       sg_map->sg_dmamap);
   aic_dmamem_free(ahc, scb_data->sg_dmat,
     sg_map->sg_vaddr,
     sg_map->sg_dmamap);
   free(sg_map, M_DEVBUF);
  }
  aic_dma_tag_destroy(ahc, scb_data->sg_dmat);
 }
 case 6:
  aic_dmamap_unload(ahc, scb_data->sense_dmat,
      scb_data->sense_dmamap);
 case 5:
  aic_dmamem_free(ahc, scb_data->sense_dmat, scb_data->sense,
    scb_data->sense_dmamap);
 case 4:
  aic_dma_tag_destroy(ahc, scb_data->sense_dmat);
 case 3:
  aic_dmamap_unload(ahc, scb_data->hscb_dmat,
      scb_data->hscb_dmamap);
 case 2:
  aic_dmamem_free(ahc, scb_data->hscb_dmat, scb_data->hscbs,
    scb_data->hscb_dmamap);
 case 1:
  aic_dma_tag_destroy(ahc, scb_data->hscb_dmat);
  break;
 case 0:
  break;
 }
 if (scb_data->scbarray != ((void*)0))
  free(scb_data->scbarray, M_DEVBUF);
}
