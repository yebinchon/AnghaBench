
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_10__ {TYPE_3__* array; } ;
struct TYPE_7__ {size_t count; } ;
struct TYPE_11__ {TYPE_4__ buffers; TYPE_1__ address_table; } ;
struct TYPE_9__ {TYPE_2__* header; } ;
struct TYPE_8__ {int data; } ;
typedef int SCI_STATUS ;
typedef TYPE_5__ SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T ;


 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 int SCI_SUCCESS ;

SCI_STATUS scic_sds_unsolicited_frame_control_get_header(
   SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T *uf_control,
   U32 frame_index,
   void **frame_header
)
{
   if (frame_index < uf_control->address_table.count)
   {


      *frame_header = &uf_control->buffers.array[frame_index].header->data;

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INVALID_PARAMETER_VALUE;
}
