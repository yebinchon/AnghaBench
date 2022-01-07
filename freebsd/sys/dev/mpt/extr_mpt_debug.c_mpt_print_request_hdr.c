
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ChainOffset; int MsgFlags; int MsgContext; int Function; } ;
typedef TYPE_1__ MSG_REQUEST_HEADER ;


 char* mpt_ioc_function (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
mpt_print_request_hdr(MSG_REQUEST_HEADER *req)
{

 printf("%s @ %p\n", mpt_ioc_function(req->Function), req);
 printf("\tChain Offset  0x%02x\n", req->ChainOffset);
 printf("\tMsgFlags      0x%02x\n", req->MsgFlags);
 printf("\tMsgContext    0x%08x\n", req->MsgContext);
}
