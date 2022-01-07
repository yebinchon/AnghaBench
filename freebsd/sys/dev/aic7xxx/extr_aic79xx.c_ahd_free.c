
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmamap; } ;
struct ahd_tmode_tstate {int init_level; struct ahd_tmode_tstate* saved_stack; struct ahd_tmode_tstate* seep_config; struct ahd_tmode_tstate* name; struct ahd_tmode_tstate* black_hole; int path; struct ahd_tmode_tstate** enabled_luns; struct ahd_tmode_tstate** enabled_targets; int parent_dmat; int buffer_dmat; int shared_data_dmat; TYPE_1__ shared_data_map; int qoutfifo; } ;
struct ahd_tmode_lstate {int init_level; struct ahd_tmode_lstate* saved_stack; struct ahd_tmode_lstate* seep_config; struct ahd_tmode_lstate* name; struct ahd_tmode_lstate* black_hole; int path; struct ahd_tmode_lstate** enabled_luns; struct ahd_tmode_lstate** enabled_targets; int parent_dmat; int buffer_dmat; int shared_data_dmat; TYPE_1__ shared_data_map; int qoutfifo; } ;
struct ahd_softc {int init_level; struct ahd_softc* saved_stack; struct ahd_softc* seep_config; struct ahd_softc* name; struct ahd_softc* black_hole; int path; struct ahd_softc** enabled_luns; struct ahd_softc** enabled_targets; int parent_dmat; int buffer_dmat; int shared_data_dmat; TYPE_1__ shared_data_map; int qoutfifo; } ;


 int AHD_NUM_LUNS ;
 int AHD_NUM_TARGETS ;
 int M_DEVBUF ;
 int ahd_fini_scbdata (struct ahd_tmode_tstate*) ;
 int ahd_platform_free (struct ahd_tmode_tstate*) ;
 int ahd_shutdown (struct ahd_tmode_tstate*) ;
 int ahd_terminate_recovery_thread (struct ahd_tmode_tstate*) ;
 int aic_dma_tag_destroy (struct ahd_tmode_tstate*,int ) ;
 int aic_dmamap_unload (struct ahd_tmode_tstate*,int ,int ) ;
 int aic_dmamem_free (struct ahd_tmode_tstate*,int ,int ,int ) ;
 int free (struct ahd_tmode_tstate*,int ) ;
 int xpt_free_path (int ) ;

void
ahd_free(struct ahd_softc *ahd)
{
 int i;

 ahd_terminate_recovery_thread(ahd);
 switch (ahd->init_level) {
 default:
 case 5:
  ahd_shutdown(ahd);

 case 4:
  aic_dmamap_unload(ahd, ahd->shared_data_dmat,
      ahd->shared_data_map.dmamap);

 case 3:
  aic_dmamem_free(ahd, ahd->shared_data_dmat, ahd->qoutfifo,
    ahd->shared_data_map.dmamap);

 case 2:
  aic_dma_tag_destroy(ahd, ahd->shared_data_dmat);
 case 1:



  break;
 case 0:
  break;
 }




 ahd_platform_free(ahd);
 ahd_fini_scbdata(ahd);
 for (i = 0; i < AHD_NUM_TARGETS; i++) {
  struct ahd_tmode_tstate *tstate;

  tstate = ahd->enabled_targets[i];
  if (tstate != ((void*)0)) {
   free(tstate, M_DEVBUF);
  }
 }






 if (ahd->name != ((void*)0))
  free(ahd->name, M_DEVBUF);
 if (ahd->seep_config != ((void*)0))
  free(ahd->seep_config, M_DEVBUF);
 if (ahd->saved_stack != ((void*)0))
  free(ahd->saved_stack, M_DEVBUF);

 free(ahd, M_DEVBUF);

 return;
}
