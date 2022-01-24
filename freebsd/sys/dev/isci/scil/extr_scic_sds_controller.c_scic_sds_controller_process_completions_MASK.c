#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U32 ;
struct TYPE_11__ {size_t completion_queue_get; size_t* completion_queue; } ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  EVENT_ENABLE ; 
 int /*<<< orphan*/  EVENT_POINTER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,size_t) ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  POINTER ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_COMPLETION_QUEUE ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  SCU_COMPLETION_TYPE_EVENT 132 
#define  SCU_COMPLETION_TYPE_NOTIFY 131 
#define  SCU_COMPLETION_TYPE_SDMA 130 
#define  SCU_COMPLETION_TYPE_TASK 129 
#define  SCU_COMPLETION_TYPE_UFI 128 
 int FUNC8 (size_t) ; 
 size_t SMU_CQGR_CYCLE_BIT ; 
 size_t SMU_CQGR_EVENT_CYCLE_BIT ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,size_t) ; 

__attribute__((used)) static
void FUNC17(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 completion_count = 0;
   U32 completion_entry;
   U32 get_index;
   U32 get_cycle;
   U32 event_index;
   U32 event_cycle;

   FUNC6((
      FUNC12(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_process_completions(0x%x) enter\n",
      this_controller
   ));

   FUNC6((
      FUNC12(this_controller),
      SCIC_LOG_OBJECT_COMPLETION_QUEUE,
      "completion queue beginning get : 0x%08x\n",
      this_controller->completion_queue_get
   ));

   // Get the component parts of the completion queue
   get_index = FUNC4(this_controller->completion_queue_get);
   get_cycle = SMU_CQGR_CYCLE_BIT & this_controller->completion_queue_get;

   event_index = FUNC3(this_controller->completion_queue_get);
   event_cycle = SMU_CQGR_EVENT_CYCLE_BIT & this_controller->completion_queue_get;

   while (
               FUNC5(get_cycle)
            == FUNC0(this_controller->completion_queue[get_index])
         )
   {
      completion_count++;

      completion_entry = this_controller->completion_queue[get_index];
      FUNC1(this_controller, get_index, get_cycle);

      FUNC6((
         FUNC12(this_controller),
         SCIC_LOG_OBJECT_COMPLETION_QUEUE,
         "completion queue entry : 0x%08x\n",
         completion_entry
      ));

      switch (FUNC8(completion_entry))
      {
      case SCU_COMPLETION_TYPE_TASK:
         FUNC15(this_controller, completion_entry);
         break;

      case SCU_COMPLETION_TYPE_SDMA:
         FUNC14(this_controller, completion_entry);
         break;

      case SCU_COMPLETION_TYPE_UFI:
         FUNC16(this_controller, completion_entry);
         break;

      case SCU_COMPLETION_TYPE_EVENT:
         FUNC13(this_controller, completion_entry);
         break;

      case SCU_COMPLETION_TYPE_NOTIFY:
         // Presently we do the same thing with a notify event that we do with the
         // other event codes.
         FUNC2(this_controller, event_index, event_cycle);
         FUNC13(this_controller, completion_entry);
         break;

      default:
         FUNC7((
            FUNC12(this_controller),
            SCIC_LOG_OBJECT_CONTROLLER,
            "SCIC Controller received unknown completion type %x\n",
            completion_entry
         ));
         break;
      }
   }

   // Update the get register if we completed one or more entries
   if (completion_count > 0)
   {
      this_controller->completion_queue_get =
           FUNC9(ENABLE)
         | FUNC9(EVENT_ENABLE)
         | event_cycle | FUNC10(EVENT_POINTER, event_index)
         | get_cycle   | FUNC10(POINTER, get_index)  ;

      FUNC11(this_controller, this_controller->completion_queue_get);
   }

   FUNC6((
      FUNC12(this_controller),
      SCIC_LOG_OBJECT_COMPLETION_QUEUE,
      "completion queue ending get : 0x%08x\n",
      this_controller->completion_queue_get
   ));

}