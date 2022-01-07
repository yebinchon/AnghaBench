
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scb {TYPE_1__* hscb; } ;
struct ahc_softc {int dummy; } ;
struct TYPE_2__ {int sgptr; } ;


 int SG_RESID_VALID ;
 int ahc_calc_residual (struct ahc_softc*,struct scb*) ;
 int aic_le32toh (int ) ;

__attribute__((used)) static __inline void
ahc_update_residual(struct ahc_softc *ahc, struct scb *scb)
{
 uint32_t sgptr;

 sgptr = aic_le32toh(scb->hscb->sgptr);
 if ((sgptr & SG_RESID_VALID) != 0)
  ahc_calc_residual(ahc, scb);
}
