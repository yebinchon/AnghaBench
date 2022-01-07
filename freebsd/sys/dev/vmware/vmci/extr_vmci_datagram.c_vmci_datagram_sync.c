
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vmci_resource_sync () ;

void
vmci_datagram_sync(void)
{

 vmci_resource_sync();
}
