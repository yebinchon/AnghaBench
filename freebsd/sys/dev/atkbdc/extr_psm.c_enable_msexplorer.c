
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int buttons; int hwid; } ;
struct psm_softc {TYPE_1__ hw; int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PROBE ;
 int PSM_EXPLORER_ID ;
 int TRUE ;
 int enable_msintelli (struct psm_softc*,int) ;
 int get_aux_id (int ) ;
 int nitems (int*) ;
 int set_mouse_sampling_rate (int ,int) ;

__attribute__((used)) static int
enable_msexplorer(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 static u_char rate0[] = { 200, 100, 80, };
 static u_char rate1[] = { 200, 200, 80, };
 int id;
 int i;






 enable_msintelli(sc, arg);


 for (i = 0; i < nitems(rate1); ++i)
  if (set_mouse_sampling_rate(kbdc, rate1[i]) != rate1[i])
   return (FALSE);

 id = get_aux_id(kbdc);
 if (id != PSM_EXPLORER_ID)
  return (FALSE);

 if (arg == PROBE) {
  sc->hw.buttons = 5;
  sc->hw.hwid = id;
 }
 for (i = 0; i < nitems(rate0); ++i)
  if (set_mouse_sampling_rate(kbdc, rate0[i]) != rate0[i])
   break;
 get_aux_id(kbdc);

 return (TRUE);
}
