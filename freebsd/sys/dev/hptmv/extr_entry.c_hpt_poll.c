
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;
typedef int IAL_ADAPTER_T ;


 int * cam_sim_softc (struct cam_sim*) ;
 int hpt_intr_locked (void*) ;

__attribute__((used)) static void
hpt_poll(struct cam_sim *sim)
{
 IAL_ADAPTER_T *pAdapter;

 pAdapter = cam_sim_softc(sim);

 hpt_intr_locked((void *)cam_sim_softc(sim));
}
