
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_HANDLED ;
 int xen_intr_handle_upcall (void*) ;

__attribute__((used)) static int
xenpci_intr_filter(void *trap_frame)
{
 xen_intr_handle_upcall(trap_frame);
 return (FILTER_HANDLED);
}
