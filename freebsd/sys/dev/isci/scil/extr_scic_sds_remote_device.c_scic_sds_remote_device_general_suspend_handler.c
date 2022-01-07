
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int rnc; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int scic_sds_remote_node_context_suspend (int ,int ,int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_device_general_suspend_handler(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32 suspend_type
)
{
    return scic_sds_remote_node_context_suspend(this_device->rnc, suspend_type, ((void*)0), ((void*)0));
}
