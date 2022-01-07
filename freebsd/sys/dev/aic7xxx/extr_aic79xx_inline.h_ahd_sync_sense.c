
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int sense_busaddr; TYPE_2__* sense_map; } ;
struct TYPE_3__ {int sense_dmat; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;
struct TYPE_4__ {int dmamap; } ;


 int AHD_SENSE_BUFSIZE ;
 int aic_dmamap_sync (struct ahd_softc*,int ,int ,int ,int ,int) ;

__attribute__((used)) static __inline void
ahd_sync_sense(struct ahd_softc *ahd, struct scb *scb, int op)
{
 aic_dmamap_sync(ahd, ahd->scb_data.sense_dmat,
   scb->sense_map->dmamap,
             scb->sense_busaddr,
          AHD_SENSE_BUFSIZE, op);
}
