
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahc_syncrate {size_t sxfr_u2; size_t period; size_t sxfr; int * rate; } ;
struct ahc_softc {int features; } ;


 int AHC_ULTRA2 ;
 size_t SXFR ;
 size_t SXFR_ULTRA2 ;
 struct ahc_syncrate* ahc_syncrates ;

u_int
ahc_find_period(struct ahc_softc *ahc, u_int scsirate, u_int maxsync)
{
 struct ahc_syncrate *syncrate;

 if ((ahc->features & AHC_ULTRA2) != 0)
  scsirate &= SXFR_ULTRA2;
 else
  scsirate &= SXFR;

 syncrate = &ahc_syncrates[maxsync];
 while (syncrate->rate != ((void*)0)) {

  if ((ahc->features & AHC_ULTRA2) != 0) {
   if (syncrate->sxfr_u2 == 0)
    break;
   else if (scsirate == (syncrate->sxfr_u2 & SXFR_ULTRA2))
    return (syncrate->period);
  } else if (scsirate == (syncrate->sxfr & SXFR)) {
    return (syncrate->period);
  }
  syncrate++;
 }
 return (0);
}
