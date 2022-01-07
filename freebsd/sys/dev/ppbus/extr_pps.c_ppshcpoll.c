
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_data {int busy; int lastdata; int timeout; int * pps; int ppbus; } ;


 int KASSERT (int,char*) ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int callout_reset (int *,int,void (*) (void*),struct pps_data*) ;
 int ppb_rdtr (int ) ;
 int pps_capture (int *) ;
 int pps_event (int *,int ) ;

__attribute__((used)) static void
ppshcpoll(void *arg)
{
 struct pps_data *sc = arg;
 int i, j, k, l;

 KASSERT(sc->busy & ~1, ("pps polling w/o opened devices"));
 i = ppb_rdtr(sc->ppbus);
 if (i == sc->lastdata)
  return;
 l = sc->lastdata ^ i;
 k = 1;
 for (j = 1; j < 9; j ++) {
  if (l & k) {
   pps_capture(&sc->pps[j]);
   pps_event(&sc->pps[j],
       i & k ? PPS_CAPTUREASSERT : PPS_CAPTURECLEAR);
  }
  k += k;
 }
 sc->lastdata = i;
 callout_reset(&sc->timeout, 1, ppshcpoll, sc);
}
