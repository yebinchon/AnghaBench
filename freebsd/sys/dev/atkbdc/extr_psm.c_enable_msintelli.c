
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
 int PSM_INTELLI_ID ;
 int TRUE ;
 int get_aux_id (int ) ;
 int nitems (int*) ;
 int set_mouse_sampling_rate (int ,int) ;

__attribute__((used)) static int
enable_msintelli(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 static u_char rate[] = { 200, 100, 80, };
 int id;
 int i;


 for (i = 0; i < nitems(rate); ++i)
  if (set_mouse_sampling_rate(kbdc, rate[i]) != rate[i])
   return (FALSE);

 id = get_aux_id(kbdc);
 if (id != PSM_INTELLI_ID)
  return (FALSE);

 if (arg == PROBE) {
  sc->hw.buttons = 3;
  sc->hw.hwid = id;
 }

 return (TRUE);
}
