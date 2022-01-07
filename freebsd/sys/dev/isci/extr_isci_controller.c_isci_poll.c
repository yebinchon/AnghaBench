
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;
struct ISCI_CONTROLLER {int dummy; } ;


 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int isci_interrupt_poll_handler (struct ISCI_CONTROLLER*) ;

void isci_poll(struct cam_sim *sim)
{
 struct ISCI_CONTROLLER *controller =
     (struct ISCI_CONTROLLER *)cam_sim_softc(sim);

 isci_interrupt_poll_handler(controller);
}
