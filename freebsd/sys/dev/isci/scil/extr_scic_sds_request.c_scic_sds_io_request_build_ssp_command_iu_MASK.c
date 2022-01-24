#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lun ;
typedef  int U32 ;
struct TYPE_8__ {scalar_t__ command_buffer; } ;
struct TYPE_7__ {int lun_number; } ;
struct TYPE_6__ {int additional_cdb_length; int /*<<< orphan*/  task_attribute; int /*<<< orphan*/  task_priority; scalar_t__ enable_first_burst; int /*<<< orphan*/  cdb; scalar_t__ lun; } ;
typedef  TYPE_1__ SCI_SSP_COMMAND_IU_T ;
typedef  TYPE_2__ SCI_SINGLE_LEVEL_LUN_T ;
typedef  TYPE_3__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

__attribute__((used)) static
void FUNC7(
   SCIC_SDS_REQUEST_T   *this_request
)
{
   SCI_SINGLE_LEVEL_LUN_T lun;
   SCI_SSP_COMMAND_IU_T *command_frame;
   void                 *os_handle;
   U32  cdb_length;
   U32 *cdb_buffer;

   command_frame =
      (SCI_SSP_COMMAND_IU_T *)this_request->command_buffer;

   os_handle = FUNC5(this_request);

   ((U32 *)&lun)[0] = 0;
   ((U32 *)&lun)[1] = 0;
   lun.lun_number = FUNC3(os_handle) &0xff;
   /// @todo Is it ok to leave junk at the end of the cdb buffer?
   FUNC6(
       (U32 *)command_frame->lun,
       (U32 *)&lun,
       sizeof(lun));

   ((U32 *)command_frame)[2] = 0;

   cdb_length = FUNC1(os_handle);
   cdb_buffer = (U32 *)FUNC0(os_handle);

   if (cdb_length > 16)
   {
      command_frame->additional_cdb_length = cdb_length - 16;
   }

   /// @todo Is it ok to leave junk at the end of the cdb buffer?
   FUNC6(
      (U32 *)(&command_frame->cdb),
      (U32 *)(cdb_buffer),
      (cdb_length + 3) / sizeof(U32)
   );

   command_frame->enable_first_burst = 0;
   command_frame->task_priority =
      FUNC2(os_handle);
   command_frame->task_attribute =
      FUNC4(os_handle);
}