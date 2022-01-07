
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact {int dummy; } ;


 void const* vmbus_xact_wait1 (struct vmbus_xact*,size_t*,int) ;

const void *
vmbus_xact_busywait(struct vmbus_xact *xact, size_t *resp_len)
{

 return (vmbus_xact_wait1(xact, resp_len, 0 ));
}
