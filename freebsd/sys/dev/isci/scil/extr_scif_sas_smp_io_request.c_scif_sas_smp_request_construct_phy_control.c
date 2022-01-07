
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* U8 ;
typedef int U32 ;
struct TYPE_6__ {void* phy_identifier; void* phy_operation; } ;
struct TYPE_7__ {TYPE_1__ phy_control; } ;
struct TYPE_8__ {TYPE_2__ request; } ;
typedef TYPE_3__ SMP_REQUEST_T ;
typedef int SMP_REQUEST_PHY_CONTROL_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SMP_FUNCTION_PHY_CONTROL ;
 int scif_sas_smp_protocol_request_construct (TYPE_3__*,int ,int ,int) ;
 void* scif_sas_smp_request_build (int *,int *,TYPE_3__*,void*,void*) ;

void * scif_sas_smp_request_construct_phy_control(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   U8 phy_operation,
   U8 phy_identifier,
   void * external_request_object,
   void * external_memory
)
{
   SMP_REQUEST_T phy_control;

   scif_sas_smp_protocol_request_construct(
      &phy_control,
      SMP_FUNCTION_PHY_CONTROL,
      0,
      sizeof(SMP_REQUEST_PHY_CONTROL_T) / sizeof(U32)
   );

   phy_control.request.phy_control.phy_operation = phy_operation;
   phy_control.request.phy_control.phy_identifier = phy_identifier;

   return scif_sas_smp_request_build(
             fw_controller, fw_device, &phy_control,
             external_request_object, external_memory
          );
}
