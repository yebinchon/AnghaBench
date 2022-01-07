
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_IO_REQUEST {TYPE_2__* ccb; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;
typedef int SCI_IO_REQUEST_DATA_DIRECTION ;



 int CAM_DIR_MASK ;

 int SCI_IO_REQUEST_DATA_IN ;
 int SCI_IO_REQUEST_DATA_OUT ;
 int SCI_IO_REQUEST_NO_DATA ;

SCI_IO_REQUEST_DATA_DIRECTION
scif_cb_io_request_get_data_direction(void * scif_user_io_request)
{
 struct ISCI_IO_REQUEST *isci_request =
     (struct ISCI_IO_REQUEST *)scif_user_io_request;

 switch (isci_request->ccb->ccb_h.flags & CAM_DIR_MASK) {
 case 129:
  return (SCI_IO_REQUEST_DATA_IN);
 case 128:
  return (SCI_IO_REQUEST_DATA_OUT);
 default:
  return (SCI_IO_REQUEST_NO_DATA);
 }
}
