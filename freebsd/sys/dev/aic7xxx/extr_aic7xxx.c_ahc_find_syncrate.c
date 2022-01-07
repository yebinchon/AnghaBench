
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahc_syncrate {int sxfr_u2; size_t period; int * rate; } ;
struct ahc_softc {int features; } ;


 int AHC_DT ;
 size_t AHC_SYNCRATE_ULTRA2 ;
 int AHC_ULTRA2 ;
 size_t MSG_EXT_PPR_DT_REQ ;
 int ST_SXFR ;
 struct ahc_syncrate* ahc_syncrates ;

struct ahc_syncrate *
ahc_find_syncrate(struct ahc_softc *ahc, u_int *period,
    u_int *ppr_options, u_int maxsync)
{
 struct ahc_syncrate *syncrate;

 if ((ahc->features & AHC_DT) == 0)
  *ppr_options &= ~MSG_EXT_PPR_DT_REQ;


 if ((*ppr_options & MSG_EXT_PPR_DT_REQ) == 0
  && maxsync < AHC_SYNCRATE_ULTRA2)
  maxsync = AHC_SYNCRATE_ULTRA2;

 for (syncrate = &ahc_syncrates[maxsync];
      syncrate->rate != ((void*)0);
      syncrate++) {





  if ((ahc->features & AHC_ULTRA2) != 0
   && (syncrate->sxfr_u2 == 0))
   break;

  if (*period <= syncrate->period) {
   if (syncrate == &ahc_syncrates[maxsync])
    *period = syncrate->period;





    if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
    *ppr_options &= ~MSG_EXT_PPR_DT_REQ;
   break;
  }
 }

 if ((*period == 0)
  || (syncrate->rate == ((void*)0))
  || ((ahc->features & AHC_ULTRA2) != 0
   && (syncrate->sxfr_u2 == 0))) {

  *period = 0;
  syncrate = ((void*)0);
  *ppr_options &= ~MSG_EXT_PPR_DT_REQ;
 }
 return (syncrate);
}
