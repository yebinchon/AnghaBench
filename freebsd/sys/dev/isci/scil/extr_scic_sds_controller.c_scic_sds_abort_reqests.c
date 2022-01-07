
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_14__ {TYPE_1__** io_request_table; } ;
struct TYPE_13__ {scalar_t__ started_request_count; } ;
struct TYPE_12__ {scalar_t__ started_request_count; TYPE_3__* owning_port; } ;
struct TYPE_11__ {TYPE_2__* target_device; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;
typedef TYPE_4__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ SCI_MAX_IO_REQUESTS ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ scic_controller_terminate_request (TYPE_4__*,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_abort_reqests(
        SCIC_SDS_CONTROLLER_T * controller,
        SCIC_SDS_REMOTE_DEVICE_T * remote_device,
        SCIC_SDS_PORT_T * port
)
{
    SCI_STATUS status = SCI_SUCCESS;
    SCI_STATUS terminate_status = SCI_SUCCESS;
    SCIC_SDS_REQUEST_T *the_request;
    U32 index;
    U32 request_count;

    if (remote_device != ((void*)0))
        request_count = remote_device->started_request_count;
    else if (port != ((void*)0))
        request_count = port->started_request_count;
    else
        request_count = SCI_MAX_IO_REQUESTS;


    for (index = 0;
         (index < SCI_MAX_IO_REQUESTS) && (request_count > 0);
         index++)
    {
       the_request = controller->io_request_table[index];

       if (the_request != ((void*)0))
       {
           if (the_request->target_device == remote_device
                   || the_request->target_device->owning_port == port
                   || (remote_device == ((void*)0) && port == ((void*)0)))
           {
               terminate_status = scic_controller_terminate_request(
                                     controller,
                                     the_request->target_device,
                                     the_request
                                  );

               if (terminate_status != SCI_SUCCESS)
                  status = terminate_status;

               request_count--;
           }
       }
    }

    return status;
}
