
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PSMD_RES_MEDIUM_HIGH ;
 int TRUE ;
 int get_mouse_status (int ,int*,int ,int) ;
 int set_mouse_resolution (int ,int ) ;
 int set_mouse_sampling_rate (int ,int) ;
 int set_mouse_scaling (int ,int) ;

__attribute__((used)) static int
enable_versapad(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int data[3];

 set_mouse_resolution(kbdc, PSMD_RES_MEDIUM_HIGH);
 set_mouse_sampling_rate(kbdc, 100);
 set_mouse_scaling(kbdc, 1);
 set_mouse_scaling(kbdc, 1);
 set_mouse_scaling(kbdc, 1);
 set_mouse_scaling(kbdc, 1);
 if (get_mouse_status(kbdc, data, 0, 3) < 3)
  return (FALSE);
 if (data[2] != 0xa || data[1] != 0 )
  return (FALSE);
 set_mouse_scaling(kbdc, 1);

 return (TRUE);
}
