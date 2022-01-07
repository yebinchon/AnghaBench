
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tag_action; } ;
union ccb {TYPE_1__ csio; } ;
typedef int uint8_t ;
struct TYPE_5__ {union ccb* cm_ccb; } ;
typedef TYPE_2__ rcb_t ;





 int SOP_TASK_ATTRIBUTE_HEAD_OF_QUEUE ;
 int SOP_TASK_ATTRIBUTE_ORDERED ;
 int SOP_TASK_ATTRIBUTE_SIMPLE ;

uint8_t os_get_task_attr(rcb_t *rcb)
{
 union ccb *ccb = rcb->cm_ccb;
 uint8_t tag_action = SOP_TASK_ATTRIBUTE_SIMPLE;

 switch(ccb->csio.tag_action) {
 case 130:
  tag_action = SOP_TASK_ATTRIBUTE_HEAD_OF_QUEUE;
  break;
 case 129:
  tag_action = SOP_TASK_ATTRIBUTE_ORDERED;
  break;
 case 128:
 default:
  tag_action = SOP_TASK_ATTRIBUTE_SIMPLE;
  break;
 }
 return tag_action;
}
