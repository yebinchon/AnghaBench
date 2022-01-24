#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U32 ;
struct TYPE_8__ {int count; int /*<<< orphan*/ * array; } ;
struct TYPE_7__ {TYPE_1__* array; } ;
struct TYPE_9__ {int get; TYPE_3__ address_table; TYPE_2__ buffers; } ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef  TYPE_4__ SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENABLE_BIT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,int,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UNSOLICITED_FRAME_EMPTY ; 
 scalar_t__ UNSOLICITED_FRAME_RELEASED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

BOOL FUNC5(
   SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T *uf_control,
   U32                                   frame_index
)
{
   U32 frame_get;
   U32 frame_cycle;

   frame_get   = uf_control->get & (uf_control->address_table.count - 1);
   frame_cycle = uf_control->get & uf_control->address_table.count;

   // In the event there are NULL entries in the UF table, we need to
   // advance the get pointer in order to find out if this frame should
   // be released (i.e. update the get pointer).
   while (
            (
               (FUNC3(
                   uf_control->address_table.array[frame_get]) == 0)
            && (FUNC4(
                   uf_control->address_table.array[frame_get]) == 0)
            )
         && (frame_get < uf_control->address_table.count)
         )
   {
      frame_get++;
   }

   // The table has a NULL entry as it's last element.  This is
   // illegal.
   FUNC0(frame_get < uf_control->address_table.count);

   if (frame_index < uf_control->address_table.count)
   {
      uf_control->buffers.array[frame_index].state = UNSOLICITED_FRAME_RELEASED;

      // The frame index is equal to the current get pointer so we
      // can now free up all of the frame entries that
      if (frame_get == frame_index)
      {
         while (
                  uf_control->buffers.array[frame_get].state
               == UNSOLICITED_FRAME_RELEASED
               )
         {
            uf_control->buffers.array[frame_get].state = UNSOLICITED_FRAME_EMPTY;

            FUNC1(
               frame_get,
               frame_cycle,
               uf_control->address_table.count - 1,
               uf_control->address_table.count
            );
         }

         uf_control->get =
                  (FUNC2(ENABLE_BIT) | frame_cycle | frame_get);

         return TRUE;
      }
      else
      {
         // Frames remain in use until we advance the get pointer
         // so there is nothing we can do here
      }
   }

   return FALSE;
}