
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ payload_size; } ;
struct vmci_delayed_datagram_info {TYPE_2__ msg; TYPE_1__* entry; } ;
struct TYPE_3__ {int resource; int client_data; int (* recv_cb ) (int ,TYPE_2__*) ;} ;


 int ASSERT (void*) ;
 int stub1 (int ,TYPE_2__*) ;
 int vmci_free_kernel_mem (struct vmci_delayed_datagram_info*,int) ;
 int vmci_resource_release (int *) ;

__attribute__((used)) static void
vmci_datagram_delayed_dispatch_cb(void *data)
{
 struct vmci_delayed_datagram_info *dg_info;

 dg_info = (struct vmci_delayed_datagram_info *)data;

 ASSERT(data);

 dg_info->entry->recv_cb(dg_info->entry->client_data, &dg_info->msg);

 vmci_resource_release(&dg_info->entry->resource);

 vmci_free_kernel_mem(dg_info, sizeof(*dg_info) +
     (size_t)dg_info->msg.payload_size);
}
