
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_7__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_5__ {int (* reset_handler ) (int *,int ) ;} ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PORT_HANDLE_T ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int stub1 (int *,int ) ;

SCI_STATUS scic_port_hard_reset(
   SCI_PORT_HANDLE_T handle,
   U32 reset_timeout
)
{
   SCIC_SDS_PORT_T * this_port = (SCIC_SDS_PORT_T *)handle;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_port_hard_reset(0x%x, 0x%x) enter\n",
      handle, reset_timeout
   ));

   return this_port->state_handlers->parent.reset_handler(
                                       &this_port->parent,
                                       reset_timeout
                                     );
}
