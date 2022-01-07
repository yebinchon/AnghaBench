
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ISCI_IO_REQUEST {TYPE_2__* ccb; } ;
struct TYPE_3__ {int dxfer_len; } ;
struct TYPE_4__ {TYPE_1__ csio; } ;



uint32_t
scif_cb_io_request_get_transfer_length(void * scif_user_io_request)
{
 struct ISCI_IO_REQUEST *isci_request =
     (struct ISCI_IO_REQUEST *)scif_user_io_request;

 return (isci_request->ccb->csio.dxfer_len);

}
