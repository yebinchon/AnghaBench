
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int associated_object; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
struct TYPE_7__ {TYPE_2__ parent; } ;
struct TYPE_8__ {TYPE_3__ parent; } ;
typedef int SCI_IO_REQUEST_DATA_DIRECTION ;
typedef TYPE_4__ SCIF_SAS_IO_REQUEST_T ;


 int scif_cb_io_request_get_data_direction (int ) ;

SCI_IO_REQUEST_DATA_DIRECTION scic_cb_io_request_get_data_direction(
   void * scic_user_io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T*)
                                   scic_user_io_request;

   return (scif_cb_io_request_get_data_direction(
             fw_io->parent.parent.parent.associated_object
          ));
}
