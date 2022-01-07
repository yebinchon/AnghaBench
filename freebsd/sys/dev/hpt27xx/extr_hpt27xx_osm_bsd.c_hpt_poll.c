
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
struct TYPE_3__ {scalar_t__ vbus; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int PVBUS ;


 int cam_sim_softc (struct cam_sim*) ;
 int hpt_assert_vbus_locked (TYPE_1__*) ;
 int hpt_pci_intr (int ) ;
 int ldm_intr (int ) ;

__attribute__((used)) static void hpt_poll(struct cam_sim *sim)
{

 hpt_pci_intr(cam_sim_softc(sim));






}
