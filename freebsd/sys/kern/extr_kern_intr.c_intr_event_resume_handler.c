
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_handler {int ih_flags; int ih_name; struct intr_event* ih_event; } ;
struct intr_event {int ie_lock; } ;


 int EINVAL ;
 int IH_SUSP ;
 int KASSERT (int ,char*) ;
 int intr_handler_barrier (struct intr_handler*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
intr_event_resume_handler(void *cookie)
{
 struct intr_handler *handler = (struct intr_handler *)cookie;
 struct intr_event *ie;

 if (handler == ((void*)0))
  return (EINVAL);
 ie = handler->ih_event;
 KASSERT(ie != ((void*)0),
     ("interrupt handler \"%s\" has a NULL interrupt event",
     handler->ih_name));





 mtx_lock(&ie->ie_lock);
 handler->ih_flags &= ~IH_SUSP;
 intr_handler_barrier(handler);
 mtx_unlock(&ie->ie_lock);
 return (0);
}
