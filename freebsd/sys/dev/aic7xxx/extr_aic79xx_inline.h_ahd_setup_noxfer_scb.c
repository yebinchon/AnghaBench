
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scb {TYPE_1__* hscb; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ datacnt; scalar_t__ dataptr; int sgptr; } ;


 int SG_LIST_NULL ;
 int aic_htole32 (int ) ;

__attribute__((used)) static __inline void
ahd_setup_noxfer_scb(struct ahd_softc *ahd, struct scb *scb)
{
 scb->hscb->sgptr = aic_htole32(SG_LIST_NULL);
 scb->hscb->dataptr = 0;
 scb->hscb->datacnt = 0;
}
