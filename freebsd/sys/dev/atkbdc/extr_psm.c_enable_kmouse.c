
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct psm_softc {int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PSMD_RES_LOW ;
 int TRUE ;
 int disable_aux_dev (int ) ;
 int empty_aux_buffer (int ,int) ;
 int get_aux_id (int ) ;
 int get_mouse_status (int ,int*,int ,int) ;
 int nitems (int*) ;
 int set_mouse_resolution (int ,int) ;
 int set_mouse_sampling_rate (int ,int) ;

__attribute__((used)) static int
enable_kmouse(struct psm_softc *sc, enum probearg arg)
{
 static u_char rate[] = { 20, 60, 40, 20, 20, 60, 40, 20, 20 };
 KBDC kbdc = sc->kbdc;
 int status[3];
 int id1;
 int id2;
 int i;

 id1 = get_aux_id(kbdc);
 if (set_mouse_sampling_rate(kbdc, 10) != 10)
  return (FALSE);




 id2 = get_aux_id(kbdc);
 if ((id1 == id2) || (id2 != 2))
  return (FALSE);

 if (set_mouse_resolution(kbdc, PSMD_RES_LOW) != PSMD_RES_LOW)
  return (FALSE);
 for (i = 0; i < nitems(rate); ++i)
  if (set_mouse_sampling_rate(kbdc, rate[i]) != rate[i])
   return (FALSE);





 if (get_mouse_status(kbdc, status, 0, 3) < 3)
  return (FALSE);
 if ((status[1] == PSMD_RES_LOW) || (status[2] == rate[i - 1]))
  return (FALSE);


 disable_aux_dev(kbdc);
 empty_aux_buffer(kbdc, 5);

 return (TRUE);
}
