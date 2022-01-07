
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scb {int flags; struct scb* col_scb; TYPE_1__* hscb; } ;
struct TYPE_5__ {int any_dev_free_scb_list; int ** scbindex; } ;
struct ahd_softc {TYPE_2__ scb_data; } ;
struct TYPE_6__ {int le; } ;
struct TYPE_4__ {int control; } ;


 int AHD_GET_SCB_COL_IDX (struct ahd_softc*,struct scb*) ;
 int LIST_INSERT_HEAD (int *,struct scb*,int ) ;
 int SCB_ACTIVE ;
 int SCB_FLAG_NONE ;
 size_t SCB_GET_TAG (struct scb*) ;
 int SCB_ON_COL_LIST ;
 int SCB_PACKETIZED ;
 int TAG_ENB ;
 int ahd_add_col_list (struct ahd_softc*,struct scb*,int ) ;
 int ahd_rem_col_list (struct ahd_softc*,struct scb*) ;
 int aic_platform_scb_free (struct ahd_softc*,struct scb*) ;
 TYPE_3__ links ;

void
ahd_free_scb(struct ahd_softc *ahd, struct scb *scb)
{


 scb->flags = SCB_FLAG_NONE;
 scb->hscb->control = 0;
 ahd->scb_data.scbindex[SCB_GET_TAG(scb)] = ((void*)0);

 if (scb->col_scb == ((void*)0)) {




  LIST_INSERT_HEAD(&ahd->scb_data.any_dev_free_scb_list,
     scb, links.le);
 } else if ((scb->col_scb->flags & SCB_ON_COL_LIST) != 0) {






  ahd_rem_col_list(ahd, scb->col_scb);
  LIST_INSERT_HEAD(&ahd->scb_data.any_dev_free_scb_list,
     scb, links.le);
  LIST_INSERT_HEAD(&ahd->scb_data.any_dev_free_scb_list,
     scb->col_scb, links.le);
 } else if ((scb->col_scb->flags
    & (SCB_PACKETIZED|SCB_ACTIVE)) == SCB_ACTIVE
  && (scb->col_scb->hscb->control & TAG_ENB) != 0) {






  ahd_add_col_list(ahd, scb,
     AHD_GET_SCB_COL_IDX(ahd, scb->col_scb));
 } else {






  LIST_INSERT_HEAD(&ahd->scb_data.any_dev_free_scb_list,
     scb, links.le);
 }

 aic_platform_scb_free(ahd, scb);
}
