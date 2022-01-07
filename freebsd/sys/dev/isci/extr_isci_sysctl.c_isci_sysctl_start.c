
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ISCI_CONTROLLER {int scif_controller_handle; } ;
typedef int * SCI_PHY_HANDLE_T ;


 int scic_controller_get_phy_handle (int ,int ,int **) ;
 int scic_phy_start (int *) ;
 int scif_controller_get_scic_handle (int ) ;

__attribute__((used)) static void
isci_sysctl_start(struct ISCI_CONTROLLER *controller,
    uint32_t phy_to_be_started)
{
 SCI_PHY_HANDLE_T phy_handle = ((void*)0);

 scic_controller_get_phy_handle(
     scif_controller_get_scic_handle(controller->scif_controller_handle),
     phy_to_be_started, &phy_handle);

 scic_phy_start(phy_handle);
}
