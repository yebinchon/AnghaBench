
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int is_port_selector_present; int signature_fis; } ;
struct TYPE_7__ {int signature_fis_buffer; } ;
struct TYPE_8__ {TYPE_1__ sata; } ;
struct TYPE_9__ {scalar_t__ protocol; TYPE_2__ phy_type; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PHY_HANDLE_T ;
typedef TYPE_3__ SCIC_SDS_PHY_T ;
typedef TYPE_4__ SCIC_SATA_PHY_PROPERTIES_T ;
typedef int SATA_FIS_REG_D2H_T ;


 int FALSE ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCIC_SDS_PHY_PROTOCOL_SATA ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int sci_base_object_get_logger (TYPE_3__*) ;

SCI_STATUS scic_sata_phy_get_properties(
   SCI_PHY_HANDLE_T phy,
   SCIC_SATA_PHY_PROPERTIES_T * properties
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sata_phy_get_properties(0x%x, 0x%x) enter\n",
      this_phy, properties
   ));

   if (this_phy->protocol == SCIC_SDS_PHY_PROTOCOL_SATA)
   {
      memcpy(
         &properties->signature_fis,
         &this_phy->phy_type.sata.signature_fis_buffer,
         sizeof(SATA_FIS_REG_D2H_T)
      );


      properties->is_port_selector_present = FALSE;

      return SCI_SUCCESS;
   }

   return SCI_FAILURE;
}
