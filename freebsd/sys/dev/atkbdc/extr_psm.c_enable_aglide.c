
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PSMD_RES_LOW ;
 int TRUE ;
 int mouse_id_proc1 (int ,int,int,int*) ;
 int set_mouse_sampling_rate (int ,int) ;

__attribute__((used)) static int
enable_aglide(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int status[3];
 if (set_mouse_sampling_rate(kbdc, 100) != 100)
  return (FALSE);
 if (!mouse_id_proc1(kbdc, PSMD_RES_LOW, 2, status))
  return (FALSE);
 if ((status[1] == PSMD_RES_LOW) || (status[2] == 100))
  return (FALSE);
 return (TRUE);
}
