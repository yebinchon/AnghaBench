
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmeParams {int wmep_acm; int wmep_txopLimit; int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; } ;
struct iwi_softc {TYPE_1__* wme; } ;
struct TYPE_2__ {int * acm; void** burst; void** cwmax; void** cwmin; int * aifsn; } ;


 void* IWI_EXP2 (int ) ;
 void* IWI_USEC (int ) ;
 int WME_NUM_AC ;
 struct wmeParams* iwi_wme_cck_params ;
 struct wmeParams* iwi_wme_ofdm_params ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
iwi_wme_init(struct iwi_softc *sc)
{
 const struct wmeParams *wmep;
 int ac;

 memset(sc->wme, 0, sizeof sc->wme);
 for (ac = 0; ac < WME_NUM_AC; ac++) {

  wmep = &iwi_wme_cck_params[ac];
  sc->wme[1].aifsn[ac] = wmep->wmep_aifsn;
  sc->wme[1].cwmin[ac] = IWI_EXP2(wmep->wmep_logcwmin);
  sc->wme[1].cwmax[ac] = IWI_EXP2(wmep->wmep_logcwmax);
  sc->wme[1].burst[ac] = IWI_USEC(wmep->wmep_txopLimit);
  sc->wme[1].acm[ac] = wmep->wmep_acm;


  wmep = &iwi_wme_ofdm_params[ac];
  sc->wme[2].aifsn[ac] = wmep->wmep_aifsn;
  sc->wme[2].cwmin[ac] = IWI_EXP2(wmep->wmep_logcwmin);
  sc->wme[2].cwmax[ac] = IWI_EXP2(wmep->wmep_logcwmax);
  sc->wme[2].burst[ac] = IWI_USEC(wmep->wmep_txopLimit);
  sc->wme[2].acm[ac] = wmep->wmep_acm;
 }
}
