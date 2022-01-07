
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_8__ {int StatusCode; int StatusFlags; int QueueTag; int ReplyWord; int StatusDataSGE; int LUN; } ;
struct TYPE_6__ {int Simple; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ SGE_IO_UNION ;
typedef TYPE_3__ MSG_TARGET_STATUS_SEND_REQUEST ;
typedef int MSG_REQUEST_HEADER ;


 scalar_t__ be64dec (int ) ;
 int mpt_dump_sgl (TYPE_2__*,int ) ;
 int mpt_print_request_hdr (int *) ;
 int printf (char*,int) ;

__attribute__((used)) static void
mpt_print_scsi_target_status_send_request(MSG_TARGET_STATUS_SEND_REQUEST *msg)
{
 SGE_IO_UNION x;

 mpt_print_request_hdr((MSG_REQUEST_HEADER *)msg);
 printf("\tStatusCode    0x%02x\n", msg->StatusCode);
 printf("\tStatusFlags   0x%02x\n", msg->StatusFlags);
 printf("\tQueueTag      0x%04x\n", msg->QueueTag);
 printf("\tReplyWord     0x%08x\n", msg->ReplyWord);
 printf("\tLun           0x%jx\n", (uintmax_t)be64dec(msg->LUN));
 x.u.Simple = msg->StatusDataSGE;
 mpt_dump_sgl(&x, 0);
}
