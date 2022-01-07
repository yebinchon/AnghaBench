
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ISCI_IO_REQUEST {TYPE_3__* ccb; } ;
struct TYPE_5__ {int tag_action; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ csio; TYPE_1__ ccb_h; } ;


 int CAM_TAG_ACTION_VALID ;



 int SCI_SAS_ACA_ATTRIBUTE ;
 int SCI_SAS_HEAD_OF_QUEUE_ATTRIBUTE ;
 int SCI_SAS_ORDERED_ATTRIBUTE ;
 int SCI_SAS_SIMPLE_ATTRIBUTE ;

uint32_t
scif_cb_io_request_get_task_attribute(void * scif_user_io_request)
{
 struct ISCI_IO_REQUEST *isci_request =
     (struct ISCI_IO_REQUEST *)scif_user_io_request;
 uint32_t task_attribute;

 if((isci_request->ccb->ccb_h.flags & CAM_TAG_ACTION_VALID) != 0)
  switch(isci_request->ccb->csio.tag_action) {
  case 129:
   task_attribute = SCI_SAS_HEAD_OF_QUEUE_ATTRIBUTE;
   break;

  case 128:
   task_attribute = SCI_SAS_ORDERED_ATTRIBUTE;
   break;

  case 130:
   task_attribute = SCI_SAS_ACA_ATTRIBUTE;
   break;

  default:
   task_attribute = SCI_SAS_SIMPLE_ATTRIBUTE;
   break;
  }
 else
  task_attribute = SCI_SAS_SIMPLE_ATTRIBUTE;

 return (task_attribute);
}
