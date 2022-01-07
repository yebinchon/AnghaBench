
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb_data {int init_level; int hscb_dmat; int hscb_maps; int sg_dmat; int sg_maps; int sense_dmat; int sense_maps; } ;
struct map_node {int dmamap; int vaddr; } ;
struct ahd_softc {struct scb_data scb_data; } ;


 int M_DEVBUF ;
 struct map_node* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int aic_dma_tag_destroy (struct ahd_softc*,int ) ;
 int aic_dmamap_unload (struct ahd_softc*,int ,int ) ;
 int aic_dmamem_free (struct ahd_softc*,int ,int ,int ) ;
 int free (struct map_node*,int ) ;
 int links ;

__attribute__((used)) static void
ahd_fini_scbdata(struct ahd_softc *ahd)
{
 struct scb_data *scb_data;

 scb_data = &ahd->scb_data;
 if (scb_data == ((void*)0))
  return;

 switch (scb_data->init_level) {
 default:
 case 7:
 {
  struct map_node *sns_map;

  while ((sns_map = SLIST_FIRST(&scb_data->sense_maps)) != ((void*)0)) {
   SLIST_REMOVE_HEAD(&scb_data->sense_maps, links);
   aic_dmamap_unload(ahd, scb_data->sense_dmat,
       sns_map->dmamap);
   aic_dmamem_free(ahd, scb_data->sense_dmat,
     sns_map->vaddr, sns_map->dmamap);
   free(sns_map, M_DEVBUF);
  }
  aic_dma_tag_destroy(ahd, scb_data->sense_dmat);

 }
 case 6:
 {
  struct map_node *sg_map;

  while ((sg_map = SLIST_FIRST(&scb_data->sg_maps)) != ((void*)0)) {
   SLIST_REMOVE_HEAD(&scb_data->sg_maps, links);
   aic_dmamap_unload(ahd, scb_data->sg_dmat,
       sg_map->dmamap);
   aic_dmamem_free(ahd, scb_data->sg_dmat,
     sg_map->vaddr, sg_map->dmamap);
   free(sg_map, M_DEVBUF);
  }
  aic_dma_tag_destroy(ahd, scb_data->sg_dmat);

 }
 case 5:
 {
  struct map_node *hscb_map;

  while ((hscb_map = SLIST_FIRST(&scb_data->hscb_maps)) != ((void*)0)) {
   SLIST_REMOVE_HEAD(&scb_data->hscb_maps, links);
   aic_dmamap_unload(ahd, scb_data->hscb_dmat,
       hscb_map->dmamap);
   aic_dmamem_free(ahd, scb_data->hscb_dmat,
     hscb_map->vaddr, hscb_map->dmamap);
   free(hscb_map, M_DEVBUF);
  }
  aic_dma_tag_destroy(ahd, scb_data->hscb_dmat);

 }
 case 4:
 case 3:
 case 2:
 case 1:
 case 0:
  break;
 }
}
