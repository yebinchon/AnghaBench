
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_handler {int ih_name; struct intr_event* ih_event; } ;
struct intr_event {void* ie_source; } ;


 int KASSERT (int ,char*) ;

void *
intr_handler_source(void *cookie)
{
 struct intr_handler *ih;
 struct intr_event *ie;

 ih = (struct intr_handler *)cookie;
 if (ih == ((void*)0))
  return (((void*)0));
 ie = ih->ih_event;
 KASSERT(ie != ((void*)0),
     ("interrupt handler \"%s\" has a NULL interrupt event",
     ih->ih_name));
 return (ie->ie_source);
}
