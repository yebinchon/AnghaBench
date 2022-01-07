
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_7__ {int * transport_layer_registers; } ;
typedef int SCU_TRANSPORT_LAYER_REGISTERS_T ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCI_SUCCESS ;
 int SCU_STPTLDARNI_WRITE (TYPE_1__*,int ) ;
 int SCU_TLCR_GEN_BIT (int ) ;
 int SCU_TLCR_READ (TYPE_1__*) ;
 int SCU_TLCR_WRITE (TYPE_1__*,int ) ;
 int STP_WRITE_DATA_PREFETCH ;
 int sci_base_object_get_logger (TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_transport_layer_initialization(
   SCIC_SDS_PHY_T *this_phy,
   SCU_TRANSPORT_LAYER_REGISTERS_T *transport_layer_registers
)
{
   U32 tl_control;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_link_layer_initialization(this_phy:0x%x, link_layer_registers:0x%x)\n",
      this_phy, transport_layer_registers
   ));

   this_phy->transport_layer_registers = transport_layer_registers;

   SCU_STPTLDARNI_WRITE(this_phy, SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX);


   tl_control = SCU_TLCR_READ(this_phy);
   tl_control |= SCU_TLCR_GEN_BIT(STP_WRITE_DATA_PREFETCH);
   SCU_TLCR_WRITE(this_phy, tl_control);

   return SCI_SUCCESS;
}
