
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact {void* x_req; } ;



void *
vmbus_xact_req_data(const struct vmbus_xact *xact)
{

 return (xact->x_req);
}
