
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct vmci_queue_header {struct vmci_handle handle; } ;


 int vmci_queue_header_reset_pointers (struct vmci_queue_header*) ;

__attribute__((used)) static inline void
vmci_queue_header_init(struct vmci_queue_header *q_header,
    const struct vmci_handle handle)
{

 q_header->handle = handle;
 vmci_queue_header_reset_pointers(q_header);
}
