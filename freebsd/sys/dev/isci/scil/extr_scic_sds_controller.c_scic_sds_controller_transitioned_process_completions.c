
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_8__ {size_t completion_queue_get; size_t* completion_queue; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ COMPLETION_QUEUE_CYCLE_BIT (size_t) ;
 int ENABLE ;
 int EVENT_ENABLE ;
 int EVENT_POINTER ;
 int INCREMENT_COMPLETION_QUEUE_GET (TYPE_1__*,size_t,size_t) ;
 int INCREMENT_EVENT_QUEUE_GET (TYPE_1__*,size_t,size_t) ;
 size_t NORMALIZE_EVENT_POINTER (size_t) ;
 size_t NORMALIZE_GET_POINTER (size_t) ;
 scalar_t__ NORMALIZE_GET_POINTER_CYCLE_BIT (size_t) ;
 int POINTER ;
 int SCIC_LOG_OBJECT_COMPLETION_QUEUE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_LOG_WARNING (int ) ;





 int SCU_GET_COMPLETION_TYPE (size_t) ;
 size_t SMU_CQGR_CYCLE_BIT ;
 size_t SMU_CQGR_EVENT_CYCLE_BIT ;
 size_t SMU_CQGR_GEN_BIT (int ) ;
 size_t SMU_CQGR_GEN_VAL (int ,size_t) ;
 int SMU_CQGR_WRITE (TYPE_1__*,size_t) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scic_sds_controller_task_completion (TYPE_1__*,size_t) ;

__attribute__((used)) static
void scic_sds_controller_transitioned_process_completions(
   SCIC_SDS_CONTROLLER_T * this_controller
)
{
   U32 completion_count = 0;
   U32 completion_entry;
   U32 get_index;
   U32 get_cycle;
   U32 event_index;
   U32 event_cycle;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_transitioned_process_completions(0x%x) enter\n",
      this_controller
   ));

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_COMPLETION_QUEUE,
      "completion queue beginning get : 0x%08x\n",
      this_controller->completion_queue_get
   ));


   get_index = NORMALIZE_GET_POINTER(this_controller->completion_queue_get);
   get_cycle = SMU_CQGR_CYCLE_BIT & this_controller->completion_queue_get;

   event_index = NORMALIZE_EVENT_POINTER(this_controller->completion_queue_get);
   event_cycle = SMU_CQGR_EVENT_CYCLE_BIT & this_controller->completion_queue_get;

   while (
               NORMALIZE_GET_POINTER_CYCLE_BIT(get_cycle)
            == COMPLETION_QUEUE_CYCLE_BIT(
                  this_controller->completion_queue[get_index])
         )
   {
      completion_count++;

      completion_entry = this_controller->completion_queue[get_index];
      INCREMENT_COMPLETION_QUEUE_GET(this_controller, get_index, get_cycle);

      SCIC_LOG_TRACE((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_COMPLETION_QUEUE,
         "completion queue entry : 0x%08x\n",
         completion_entry
      ));

      switch (SCU_GET_COMPLETION_TYPE(completion_entry))
      {
      case 129:
         scic_sds_controller_task_completion(this_controller, completion_entry);
      break;

      case 131:
         INCREMENT_EVENT_QUEUE_GET(this_controller, event_index, event_cycle);


      case 132:
      case 130:
      case 128:
      default:
         SCIC_LOG_WARNING((
            sci_base_object_get_logger(this_controller),
            SCIC_LOG_OBJECT_CONTROLLER,
            "SCIC Controller ignoring completion type %x\n",
            completion_entry
         ));
      break;
      }
   }


   if (completion_count > 0)
   {
      this_controller->completion_queue_get =
           SMU_CQGR_GEN_BIT(ENABLE)
         | SMU_CQGR_GEN_BIT(EVENT_ENABLE)
         | event_cycle | SMU_CQGR_GEN_VAL(EVENT_POINTER, event_index)
         | get_cycle | SMU_CQGR_GEN_VAL(POINTER, get_index) ;

      SMU_CQGR_WRITE(this_controller, this_controller->completion_queue_get);
   }

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_COMPLETION_QUEUE,
      "completion queue ending get : 0x%08x\n",
      this_controller->completion_queue_get
   ));
}
