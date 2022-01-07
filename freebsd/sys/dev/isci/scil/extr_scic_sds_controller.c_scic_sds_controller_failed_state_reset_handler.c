
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCI_CONTROLLER_FATAL_MEMORY_ERROR ;
 int SCI_FAILURE ;
 int sci_base_object_get_logger (int *) ;
 int scic_sds_controller_general_reset_handler (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_failed_state_reset_handler(
   SCI_BASE_CONTROLLER_T *controller
)
{
    SCIC_SDS_CONTROLLER_T *this_controller;
    this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

    if (this_controller->parent.error == SCI_CONTROLLER_FATAL_MEMORY_ERROR) {
        SCIC_LOG_TRACE((
           sci_base_object_get_logger(controller),
           SCIC_LOG_OBJECT_CONTROLLER,
           "scic_sds_controller_resetting_state_enter(0x%x) enter\n not allowed with fatal memory error",
           controller
        ));

        return SCI_FAILURE;
    } else {
        return scic_sds_controller_general_reset_handler(controller);
    }
}
