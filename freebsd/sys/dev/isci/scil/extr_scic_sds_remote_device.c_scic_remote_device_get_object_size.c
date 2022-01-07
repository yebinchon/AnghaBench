
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;



U32 scic_remote_device_get_object_size(void)
{
   return sizeof(SCIC_SDS_REMOTE_DEVICE_T)
          + sizeof(SCIC_SDS_REMOTE_NODE_CONTEXT_T);
}
