
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
struct TYPE_9__ {int * array; } ;
struct TYPE_8__ {int * array; } ;
struct TYPE_7__ {TYPE_4__* array; } ;
struct TYPE_11__ {TYPE_3__ headers; TYPE_2__ address_table; TYPE_1__ buffers; } ;
struct TYPE_10__ {void* state; int * header; int * buffer; } ;
typedef int SCI_PHYSICAL_ADDRESS ;
typedef TYPE_4__ SCIC_SDS_UNSOLICITED_FRAME_T ;
typedef TYPE_5__ SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T ;
typedef scalar_t__ POINTER_UINT ;


 scalar_t__ SCU_UNSOLICITED_FRAME_BUFFER_SIZE ;
 void* UNSOLICITED_FRAME_EMPTY ;
 int sci_cb_make_physical_address (int ,int ,int ) ;
 int sci_physical_address_add (int ,scalar_t__) ;

__attribute__((used)) static
void scic_sds_unsolicited_frame_control_construct_frames(
   SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T *uf_control,
   SCI_PHYSICAL_ADDRESS uf_buffer_phys_address,
   POINTER_UINT uf_buffer_virt_address,
   U32 unused_uf_header_entries,
   U32 used_uf_header_entries
)
{
   U32 index;
   SCIC_SDS_UNSOLICITED_FRAME_T *uf;



   for (index = 0; index < unused_uf_header_entries; index++)
   {
      uf = &uf_control->buffers.array[index];

      sci_cb_make_physical_address(
         uf_control->address_table.array[index], 0, 0
      );
      uf->buffer = ((void*)0);
      uf->header = &uf_control->headers.array[index];
      uf->state = UNSOLICITED_FRAME_EMPTY;
   }



   for (index = unused_uf_header_entries;
        index < unused_uf_header_entries + used_uf_header_entries;
        index++)
   {
      uf = &uf_control->buffers.array[index];

      uf_control->address_table.array[index] = uf_buffer_phys_address;

      uf->buffer = (void*) uf_buffer_virt_address;
      uf->header = &uf_control->headers.array[index];
      uf->state = UNSOLICITED_FRAME_EMPTY;



      uf_buffer_virt_address += SCU_UNSOLICITED_FRAME_BUFFER_SIZE;
      sci_physical_address_add(
         uf_buffer_phys_address, SCU_UNSOLICITED_FRAME_BUFFER_SIZE
      );
   }
}
