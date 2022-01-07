
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Function; } ;
typedef int MSG_SCSI_IO_REPLY ;
typedef int MSG_PORT_ENABLE_REPLY ;
typedef int MSG_IOC_INIT_REPLY ;
typedef int MSG_IOC_FACTS_REPLY ;
typedef int MSG_EVENT_NOTIFY_REPLY ;
typedef TYPE_1__ MSG_DEFAULT_REPLY ;
 int mpt_print_enable_reply (int *) ;
 int mpt_print_event_notice (int *) ;
 int mpt_print_init_reply (int *) ;
 int mpt_print_ioc_facts (int *) ;
 int mpt_print_reply_hdr (TYPE_1__*) ;
 int mpt_print_scsi_io_reply (int *) ;

void
mpt_print_reply(void *vmsg)
{
 MSG_DEFAULT_REPLY *msg = vmsg;

 switch (msg->Function) {
 case 133:
  mpt_print_event_notice((MSG_EVENT_NOTIFY_REPLY *)msg);
  break;
 case 130:
  mpt_print_enable_reply((MSG_PORT_ENABLE_REPLY *)msg);
  break;
 case 132:
  mpt_print_ioc_facts((MSG_IOC_FACTS_REPLY *)msg);
  break;
 case 131:
  mpt_print_init_reply((MSG_IOC_INIT_REPLY *)msg);
  break;
 case 128:
 case 129:
  mpt_print_scsi_io_reply((MSG_SCSI_IO_REPLY *)msg);
  break;
 default:
  mpt_print_reply_hdr((MSG_DEFAULT_REPLY *)msg);
  break;
 }
}
