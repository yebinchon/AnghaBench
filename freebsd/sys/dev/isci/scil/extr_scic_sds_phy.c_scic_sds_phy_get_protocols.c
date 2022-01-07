
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {int smp_target; int stp_target; int ssp_target; int smp_initiator; int stp_initiator; int ssp_initiator; } ;
struct TYPE_6__ {int all; TYPE_1__ bits; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCU_SAS_TIID_READ (int *) ;
 int sci_base_object_get_logger (int *) ;

void scic_sds_phy_get_protocols(
   SCIC_SDS_PHY_T *this_phy,
   SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T * protocols
)
{
   U32 tiid_value = SCU_SAS_TIID_READ(this_phy);



   if (tiid_value & 0x2)
      protocols->u.bits.smp_target = 1;

   if (tiid_value & 0x4)
      protocols->u.bits.stp_target = 1;

   if (tiid_value & 0x8)
      protocols->u.bits.ssp_target = 1;

   if (tiid_value & 0x200)
      protocols->u.bits.smp_initiator = 1;

   if ((tiid_value & 0x400))
      protocols->u.bits.stp_initiator = 1;

   if (tiid_value & 0x800)
      protocols->u.bits.ssp_initiator = 1;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_get_protocols(this_phy:0x%x, protocols:0x%x)\n",
      this_phy, protocols->u.all
   ));
}
