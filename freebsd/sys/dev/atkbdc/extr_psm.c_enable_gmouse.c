
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PSMD_RES_HIGH ;
 int TRUE ;
 int mouse_id_proc1 (int ,int ,int,int*) ;

__attribute__((used)) static int
enable_gmouse(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int status[3];
 if (!mouse_id_proc1(kbdc, PSMD_RES_HIGH, 1, status))
  return (FALSE);
 if ((status[1] != '3') || (status[2] != 'U'))
  return (FALSE);
 return (TRUE);
}
