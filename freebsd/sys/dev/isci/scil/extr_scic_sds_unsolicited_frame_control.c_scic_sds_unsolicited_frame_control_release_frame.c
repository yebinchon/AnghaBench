
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_8__ {int count; int * array; } ;
struct TYPE_7__ {TYPE_1__* array; } ;
struct TYPE_9__ {int get; TYPE_3__ address_table; TYPE_2__ buffers; } ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_4__ SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T ;
typedef int BOOL ;


 int ASSERT (int) ;
 int ENABLE_BIT ;
 int FALSE ;
 int INCREMENT_QUEUE_GET (size_t,size_t,int,int) ;
 size_t SCU_UFQGP_GEN_BIT (int ) ;
 int TRUE ;
 scalar_t__ UNSOLICITED_FRAME_EMPTY ;
 scalar_t__ UNSOLICITED_FRAME_RELEASED ;
 scalar_t__ sci_cb_physical_address_lower (int ) ;
 scalar_t__ sci_cb_physical_address_upper (int ) ;

BOOL scic_sds_unsolicited_frame_control_release_frame(
   SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T *uf_control,
   U32 frame_index
)
{
   U32 frame_get;
   U32 frame_cycle;

   frame_get = uf_control->get & (uf_control->address_table.count - 1);
   frame_cycle = uf_control->get & uf_control->address_table.count;




   while (
            (
               (sci_cb_physical_address_lower(
                   uf_control->address_table.array[frame_get]) == 0)
            && (sci_cb_physical_address_upper(
                   uf_control->address_table.array[frame_get]) == 0)
            )
         && (frame_get < uf_control->address_table.count)
         )
   {
      frame_get++;
   }



   ASSERT(frame_get < uf_control->address_table.count);

   if (frame_index < uf_control->address_table.count)
   {
      uf_control->buffers.array[frame_index].state = UNSOLICITED_FRAME_RELEASED;



      if (frame_get == frame_index)
      {
         while (
                  uf_control->buffers.array[frame_get].state
               == UNSOLICITED_FRAME_RELEASED
               )
         {
            uf_control->buffers.array[frame_get].state = UNSOLICITED_FRAME_EMPTY;

            INCREMENT_QUEUE_GET(
               frame_get,
               frame_cycle,
               uf_control->address_table.count - 1,
               uf_control->address_table.count
            );
         }

         uf_control->get =
                  (SCU_UFQGP_GEN_BIT(ENABLE_BIT) | frame_cycle | frame_get);

         return TRUE;
      }
      else
      {


      }
   }

   return FALSE;
}
