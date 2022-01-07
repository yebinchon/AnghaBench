
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buttons; int hwid; } ;
struct psm_softc {TYPE_1__ hw; int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PROBE ;


 int TRUE ;
 int get_aux_id (int ) ;

__attribute__((used)) static int
enable_4dplus(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int id;
 id = get_aux_id(kbdc);
 switch (id) {
 case 129:
  break;
 case 128:
  break;
 default:
  return (FALSE);
 }

 if (arg == PROBE) {
  sc->hw.buttons = (id == 129) ? 4 : 3;
  sc->hw.hwid = id;
 }

 return (TRUE);
}
