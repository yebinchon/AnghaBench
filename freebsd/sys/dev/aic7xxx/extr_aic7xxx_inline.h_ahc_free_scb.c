
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int flags; struct hardware_scb* hscb; } ;
struct hardware_scb {size_t tag; scalar_t__ control; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_4__ {int sle; } ;
struct TYPE_3__ {int free_scbs; int ** scbindex; } ;


 int SCB_FLAG_NONE ;
 int SLIST_INSERT_HEAD (int *,struct scb*,int ) ;
 int aic_platform_scb_free (struct ahc_softc*,struct scb*) ;
 TYPE_2__ links ;

__attribute__((used)) static __inline void
ahc_free_scb(struct ahc_softc *ahc, struct scb *scb)
{
 struct hardware_scb *hscb;

 hscb = scb->hscb;

 ahc->scb_data->scbindex[hscb->tag] = ((void*)0);
 scb->flags = SCB_FLAG_NONE;
 hscb->control = 0;

 SLIST_INSERT_HEAD(&ahc->scb_data->free_scbs, scb, links.sle);


 aic_platform_scb_free(ahc, scb);
}
