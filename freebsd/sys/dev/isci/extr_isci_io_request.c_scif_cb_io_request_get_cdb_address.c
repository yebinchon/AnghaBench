
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ISCI_IO_REQUEST {TYPE_1__* ccb; } ;
struct TYPE_2__ {int csio; } ;


 void* scsiio_cdb_ptr (int *) ;

void *
scif_cb_io_request_get_cdb_address(void * scif_user_io_request)
{
 struct ISCI_IO_REQUEST *isci_request =
     (struct ISCI_IO_REQUEST *)scif_user_io_request;

 return (scsiio_cdb_ptr(&isci_request->ccb->csio));
}
