
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PortNumber; } ;
typedef TYPE_1__ MSG_PORT_ENABLE_REPLY ;
typedef int MSG_DEFAULT_REPLY ;


 int mpt_print_reply_hdr (int *) ;
 int printf (char*,int) ;

__attribute__((used)) static void
mpt_print_enable_reply(MSG_PORT_ENABLE_REPLY *msg)
{

 mpt_print_reply_hdr((MSG_DEFAULT_REPLY *)msg);
 printf("\tPort:         %d\n", msg->PortNumber);
}
