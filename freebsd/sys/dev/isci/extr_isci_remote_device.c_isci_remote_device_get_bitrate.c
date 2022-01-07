
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; } ;
struct ISCI_DOMAIN {int sci_object; struct ISCI_CONTROLLER* controller; } ;
struct ISCI_CONTROLLER {int scif_controller_handle; } ;
struct TYPE_6__ {int negotiated_link_rate; } ;
struct TYPE_5__ {int phy_mask; } ;
typedef int SCI_PORT_HANDLE_T ;
typedef int SCI_PHY_HANDLE_T ;
typedef TYPE_1__ SCIC_PORT_PROPERTIES_T ;
typedef TYPE_2__ SCIC_PHY_PROPERTIES_T ;





 int scic_controller_get_phy_handle (int ,scalar_t__,int *) ;
 int scic_phy_get_properties (int ,TYPE_2__*) ;
 int scic_port_get_properties (int ,TYPE_1__*) ;
 int scif_controller_get_scic_handle (int ) ;
 int scif_domain_get_scic_port_handle (int ) ;

uint32_t
isci_remote_device_get_bitrate(struct ISCI_REMOTE_DEVICE *remote_device)
{
 struct ISCI_DOMAIN *domain = remote_device->domain;
 struct ISCI_CONTROLLER *controller = domain->controller;
 SCI_PORT_HANDLE_T port_handle;
 SCIC_PORT_PROPERTIES_T port_properties;
 uint8_t phy_index;
 SCI_PHY_HANDLE_T phy_handle;
 SCIC_PHY_PROPERTIES_T phy_properties;




 port_handle = scif_domain_get_scic_port_handle(domain->sci_object);
 scic_port_get_properties(port_handle, &port_properties);


 phy_index = 0;
 while ((port_properties.phy_mask != 0) &&
     !(port_properties.phy_mask & 0x1)) {

  phy_index++;
  port_properties.phy_mask >>= 1;
 }


 scic_controller_get_phy_handle(
     scif_controller_get_scic_handle(controller->scif_controller_handle),
     phy_index, &phy_handle);
 scic_phy_get_properties(phy_handle, &phy_properties);

 switch (phy_properties.negotiated_link_rate) {
 case 130:
  return (150000);
 case 129:
  return (300000);
 case 128:
  return (600000);
 default:
  return (0);
 }
}
