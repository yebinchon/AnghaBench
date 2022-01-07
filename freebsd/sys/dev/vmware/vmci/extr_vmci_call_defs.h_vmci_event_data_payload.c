
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_event_data {int dummy; } ;



__attribute__((used)) static inline void *
vmci_event_data_payload(struct vmci_event_data *ev_data)
{

 return ((void *)((char *)ev_data + sizeof(*ev_data)));
}
