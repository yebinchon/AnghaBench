
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct ctxinfo {int flags; int dlci; } ;
typedef TYPE_1__* sc_p ;
struct TYPE_3__ {int* ALT; struct ctxinfo* channel; } ;


 int CHAN_VALID ;
 int CTX_VALID ;
 int CTX_VALUE ;
 int LOG_ERR ;
 int MAX_CT ;
 int bzero (struct ctxinfo*,int) ;
 int log (int ,char*,int) ;

__attribute__((used)) static int
ngfrm_allocate_CTX(sc_p sc, int dlci)
{
 u_int ctxnum = -1;
 volatile struct ctxinfo *CTXp = ((void*)0);


 if (dlci > 1023)
  return (-1);


 if (sc->ALT[dlci]) {
  if ((ctxnum = sc->ALT[dlci] & CTX_VALUE) < MAX_CT) {
   CTXp = sc->channel + ctxnum;
  } else {
   ctxnum = -1;
   sc->ALT[dlci] = 0;
  }
 }





 if (CTXp == ((void*)0)) {
  for (ctxnum = 0; ctxnum < MAX_CT; ctxnum++) {



   if ((sc->channel[ctxnum].flags & CHAN_VALID) == 0) {
    bzero(sc->channel + ctxnum,
          sizeof(struct ctxinfo));
    CTXp = sc->channel + ctxnum;
    sc->ALT[dlci] = ctxnum | CTX_VALID;
    sc->channel[ctxnum].dlci = dlci;
    sc->channel[ctxnum].flags = CHAN_VALID;
    break;
   }
  }
 }





 if (!CTXp) {
  log(LOG_ERR, "No CTX available for dlci %d\n", dlci);
  return (-1);
 }
 return (ctxnum);
}
