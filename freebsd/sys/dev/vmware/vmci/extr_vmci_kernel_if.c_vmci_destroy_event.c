
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sema_mtx; } ;
typedef TYPE_1__ vmci_event ;


 scalar_t__ mtx_owned (int *) ;
 int sema_destroy (TYPE_1__*) ;

void
vmci_destroy_event(vmci_event *event)
{

 if (mtx_owned(&event->sema_mtx))
  sema_destroy(event);
}
