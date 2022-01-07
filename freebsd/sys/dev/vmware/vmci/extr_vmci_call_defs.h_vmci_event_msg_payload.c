
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_event_msg {int event_data; } ;


 void* vmci_event_data_payload (int *) ;

__attribute__((used)) static inline void *
vmci_event_msg_payload(struct vmci_event_msg *e_msg)
{

 return (vmci_event_data_payload(&e_msg->event_data));
}
